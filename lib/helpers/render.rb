module Error::Helpers
  class Render
    def self.json(_error, _status, _message)
      {
        errors: [
          {
            id: "{unique identifier for this particular occurrence}",
            links: {
              about: "{link that leads to further details about this problem}"
            },
            status: _status,
            code: "{application-specific error code}",
            title: _error,
            detail: _message,
            source: {
              pointer: "{a JSON Pointer to the associated entity in the request document}",
              parameter: "{a string indicating which URI query parameter caused the error}"
            },
            meta: {}
          }
        ]
      }.as_json
    end
  end
end