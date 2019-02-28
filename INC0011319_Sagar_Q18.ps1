Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
[int]$guess =0
[int]$attempt =0
[int]$secret = Get-Random -Minimum 1 -Maximum 100
$speak.Speak("Hello, I have a secret!It's a number between 1 and 100. I'll give you 3 tries to guess it.")

    $speak.SpeakAsync("What's your guess?") | Out-Null

 do {
 
     try {
        $guess = Read-Host "What's your guess?"
 
        if ($guess -lt 1 -or $guess -gt 100) {
            throw
        }
    }
    catch {
        $secret.Speak("Invalid number")
        continue
   }

    if ($guess -lt $secret) {
        $speak.Speak("Too low!")
    }
    elseif ($guess -gt $secret) {
        $speak.Speak("Too high")
    }
 
    $attempt += 1
}
until ($guess -eq $secret -or $attempt -eq 3)
 
if ($guess -eq $secret) {
    $speak.Speak("Yeyii you guessed my secret number, you did it!!")
}
else {
    $speak.Speak("You are out of guesses! Better luck next time My secret number was $secret")
}