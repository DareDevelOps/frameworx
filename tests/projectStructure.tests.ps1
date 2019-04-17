$projectName = 'Test project'
Describe -Tag 'integration' "$projectName project structure exists" {
    It "has a tests folder"{
        '.\tests' | Should Exist
    }

    It "has a module manifest file" {
        '.\*.psd1' | Should Exist
    }

    It "has a module file" {
        '.\*.psm1' | Should Exist
    }

    It "has a requirements.md file" {
        '.\requirements.md' | Should Exist
    }

    It "has a public functions folder" {
        '.\src\public' | Should Exist
    }

    It "has a private functions folder" {
        '.\src\private' | Should Exist
    }

    It "has a readme.md file" {
        '.\readme.md' | Should Exist
    }
    It "has a build runner" {
        '.\build.ps1' | Should Exist
    }
    It "has a src folder" {
        '.\src' | Should Exist
    }
}