require "stringio"
require "dry/cli"

module Rubosort
  module CLI
    module Commands
      class Sort < Dry::CLI::Command
        COP_REGEX = %r/^(?<comment>#\s)?(?<cop>[\w\/]+):$/.freeze
        PARAGRAPH_DELIMITER = "\n\n".freeze
        DEFAULT_OUTPUT = "-".freeze

        desc "Sort cops from a Rubocop configuration file in alphabetic order."

        argument :file, required: true, desc: "File to sort"
        option :output, default: DEFAULT_OUTPUT, aliases: ["-o"], desc: "File to write in"
        option :force, type: :boolean, default: false, desc: "Force write to output file"

        example [
          "path/to/foo.yml            # Run Rubosort on foo.yml file",
          "foo.yml -o bar.yml         # Writes the result in bar.yml",
          "foo.yml -o bar.yml --foce  # Force writing into existing bar.yml file"
        ]

        def call(file:, **options)
          filepath = File.expand_path(file)

          unless File.file?(filepath)
            puts "File not found."
            exit 1
          end

          paragraphs = File.open(filepath) do |f|
            f.readlines(PARAGRAPH_DELIMITER)
          end

          sorted_paragraphs = paragraphs.sort_by do |p|
            match_data = p.match(COP_REGEX)

            if match_data.nil?
              p.split.first
            else
              cop = match_data.named_captures["cop"]
              bangcop(cop)
            end
          end

          output = options.fetch(:output)

          if output == DEFAULT_OUTPUT
            puts sorted_paragraphs
            exit 0
          end

          outpath = File.expand_path(output)
          force = options.fetch(:force)

          if File.file?(outpath) && !force
            puts "File #{output} already exists. Please provide --force option to override it"
            exit 1
          end

          File.open(outpath, 'w') do |f|
            f.write(sorted_paragraphs.join)
          end
        end

        private

        def bangcop(cop)
          case cop
          when "require" then "!!#{cop}"
          when "AllCops" then "!#{cop}"
          else
            cop
          end
        end
      end
    end
  end
end
