<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enhanced Affirmations & Binaural Beats</title>
<style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('https://example.com/anime-calm-bg.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #1f3548;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }
        
        /* Header Styling */
        h1 {
            font-size: 1.8em;
            color: #fff;
            text-align: center;
            margin-bottom: 20px;
            text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.3);
        }
        
        /* Card Container */
        #app {
            background: rgba(255, 255, 255, 0.8);
            border-radius: 12px;
            padding: 20px;
            width: 90%;
            max-width: 400px;
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(10px);
        }
        
        /* Section Headers */
        h3 {
            font-size: 1.2em;
            color: #3a4a5d;
            margin-bottom: 10px;
            text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.2);
        }
        
        /* Form Elements */
        textarea, select, input[type="number"] {
            width: 100%;
            padding: 12px;
            font-size: 1em;
            border: none;
            border-radius: 8px;
            margin-bottom: 12px;
            color: #1f3548;
            background-color: rgba(255, 255, 255, 0.6);
            transition: box-shadow 0.3s ease;
        }
        
        textarea:focus, select:focus, input[type="number"]:focus {
            box-shadow: 0px 0px 8px rgba(105, 145, 200, 0.7);
            outline: none;
        }
        
        /* Buttons */
        button {
            background-color: #5e9bb3;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            font-size: 1em;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 8px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.15);
        }
        
        button:hover {
            background-color: #488293;
            transform: translateY(-3px);
        }
        
        /* Affirmation List */
        #affirmationList {
            list-style: none;
            padding: 0;
            margin-top: 15px;
            max-height: 200px;
            overflow-y: auto;
            scroll-behavior: smooth;
        }

        /* Affirmation Item */
        .affirmation {
            background-color: rgba(120, 175, 208, 0.8);
            color: #ffffff;
            border-radius: 10px;
            padding: 12px;
            margin-bottom: 8px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            transition: box-shadow 0.3s;
            font-weight: bold;
        }

        .affirmation:hover {
            box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.2);
        }

        /* Checkbox Styling */
        .affirmationCheckbox {
            width: 20px;
            height: 20px;
            margin-right: 10px;
            accent-color: #5e9bb3;
        }

        /* Custom Loading Bar */
        #loadingBarContainer {
            width: 100%;
            background-color: rgba(120, 175, 208, 0.4);
            border-radius: 5px;
            overflow: hidden;
            margin-bottom: 15px;
            display: none;
        }
        
        #loadingBar {
            height: 5px;
            background-color: #5e9bb3;
            width: 0;
            transition: width 0.4s ease;
        }
        
        /* Smooth Checkbox and Play Button Effects */
        input[type="checkbox"] {
            transform: scale(1.2);
            transition: transform 0.2s;
        }

        input[type="checkbox"]:hover {
            transform: scale(1.3);
        }

        /* Floating Animation for Buttons */
        button {
            animation: floatButton 2s ease-in-out infinite alternate;
        }

        @keyframes floatButton {
            from { transform: translateY(0); }
            to { transform: translateY(-5px); }
        }
</style>
</head>
<body>
    <h1>Enhanced Affirmations & Binaural Beats</h1>

    <label for="apiSelect">Choose Voice API:</label>
    <select id="apiSelect" onchange="updateVoiceOptions()">
        <option value="browser">Browser SpeechSynthesis</option>
        <option value="mozilla">Mozilla TTS (free)</option>
        <!-- Add other APIs here -->
    </select><br><br>

    <label for="voiceSelect">Choose Voice:</label>
    <select id="voiceSelect"></select><br><br>

    <!-- Loading Bar -->
    <div id="loadingBarContainer">
        <div id="loadingBar"></div>
    </div>


    
    <!-- Affirmation Input and Controls -->
    <textarea id="affirmationInput" rows="2" cols="30" placeholder="Type your affirmation here"></textarea>
    <button onclick="addAffirmation()">Add Affirmation</button>
    <label>
        <input type="checkbox" id="subliminalEffect"> Subliminal Effect
    </label><br><br>

    <!-- Affirmations List -->
    <h3>Your Affirmations</h3>
   <!-- Modified Affirmations List with Checkbox -->
<ul id="affirmationList"></ul>

<!-- Play All Affirmations Loop Button -->
<button onclick="playSelectedAffirmations()">Play Selected in Loop</button><br><br>
<!-- Play/Pause Affirmations Button -->
<button id="playPauseButton" onclick="togglePlayPause()">Play Selected in Loop</button>

    <!-- Import/Export Controls -->
    <h3>Import/Export Affirmations</h3>
    <textarea id="importExportText" rows="2" cols="30" placeholder="Paste or copy affirmations here"></textarea>
    <button onclick="importAffirmations()">Import</button>
    <button onclick="exportAffirmations()">Export</button><br><br>

    <!-- Binaural Beat Controls -->
    <h3>Binaural Beats Settings</h3>
    <label for="leftFreq">Left Frequency (Hz):</label>
    
    <select id="leftFreq">
        <option value="210">210 (Focus)</option>
        <option value="396">396 (root) emotion Stability</option>
        <option value="417">417 (sacral) desire / change </option>
        <option value="528">528 (solor) self  and no other opinions. </option>
        <option value="639">639 (heart) love /  </option>
        <option value="741">741 (thtoat) grow / communition  </option>
        <option value="852">852 (3rd) do for others/ trusting </option>
        <option value="963">852 (c) nothing </option>
        <option value="7.83">7.83 (Earth Frequency)</option>
        <option value="custom">Custom</option>
    </select>
    <input type="number" id="customLeftFreq" step="0.01" placeholder="Custom Hz" style="display:none;"><br>

    <label for="rightFreq">Right Frequency (Hz):</label>
    <select id="rightFreq">
        <option value="396">396 (root) emotion Stability</option>
        <option value="417">417 (sacral) desire / change </option>
        <option value="528">528 (solor) self  and no other opinions. </option>
        <option value="639">639 (heart) love /  </option>
        <option value="741">741 (thtoat) grow / communition  </option>
        <option value="852">852 (3rd) do for others/ trusting </option>
        <option value="963">852 (c) nothing </option>
        <option value="7.83">7.83 (Earth Frequency)</option>
        <option value="custom">Custom</option>
    </select>
    <input type="number" id="customRightFreq" step="0.01" placeholder="Custom Hz" style="display:none;"><br>

    <button onclick="startBinauralBeats()">Start Binaural Beats</button>
    <button onclick="stopBinauralBeats()">Stop Binaural Beats</button><br><br>

    <script>
        let affirmations = JSON.parse(localStorage.getItem('affirmations') || '[]');
        let audioContext;
        let leftOscillator, rightOscillator;
        let playAllInterval;

        let isPlaying = false; // Track if affirmations are currently playing
 
let currentAffirmationIndex = 0;
let selectedAffirmations = [];





function updateVoiceOptions() {
        const apiSelect = document.getElementById('apiSelect').value;
        const voiceSelect = document.getElementById('voiceSelect');
        voiceSelect.innerHTML = ''; // Clear existing options

        if (apiSelect === 'browser') {
            populateBrowserVoices();
        } else if (apiSelect === 'mozilla') {
            loadMozillaVoices();
        }
    }

    // Load browser voices
    function populateBrowserVoices() {
        const voices = speechSynthesis.getVoices();
        voices.forEach((voice, index) => {
            const option = document.createElement('option');
            option.value = index;
            option.textContent = `${voice.name} (${voice.lang})`;
            document.getElementById('voiceSelect').appendChild(option);
        });
    }

    // Load Mozilla TTS voices (Placeholder function for demonstration)
    function loadMozillaVoices() {
        showLoadingBar();
        setTimeout(() => {
            // Example voices; replace with API call for actual Mozilla TTS voices
            const mozillaVoices = [
                { name: "Mozilla Female", lang: "en-US" },
                { name: "Mozilla Male", lang: "en-GB" },
            ];
            mozillaVoices.forEach((voice, index) => {
                const option = document.createElement('option');
                option.value = index;
                option.textContent = `${voice.name} (${voice.lang})`;
                document.getElementById('voiceSelect').appendChild(option);
            });
            hideLoadingBar();
        }, 2000); // Simulate API load time
    }

    // Show loading bar
    function showLoadingBar() {
        const loadingBarContainer = document.getElementById('loadingBarContainer');
        const loadingBar = document.getElementById('loadingBar');
        loadingBarContainer.style.display = 'block';
        loadingBar.style.width = '0%';
        let width = 0;
        const interval = setInterval(() => {
            if (width >= 100) {
                clearInterval(interval);
            } else {
                width += 10;
                loadingBar.style.width = width + '%';
            }
        }, 100);
    }

    // Hide loading bar
    function hideLoadingBar() {
        document.getElementById('loadingBarContainer').style.display = 'none';
    }

    // Toggle Play/Pause
    function togglePlayPause() {
        if (isPlaying) {
            pauseAffirmations();
        } else {
            playSelectedAffirmations();
        }
    }

    // Play selected affirmations
    function playSelectedAffirmations() {
        selectedAffirmations = Array.from(document.querySelectorAll('.affirmationCheckbox'))
            .filter(checkbox => checkbox.checked)
            .map(checkbox => affirmations[checkbox.getAttribute('data-index')]);

        if (selectedAffirmations.length === 0) {
            alert("Please select at least one affirmation to play.");
            return;
        }

        isPlaying = true;
        document.getElementById('playPauseButton').textContent = "Pause";
        currentAffirmationIndex = 0;
        playNextAffirmation();
    }

    function playNextAffirmation() {
        if (!isPlaying) return;

        if (currentAffirmationIndex >= selectedAffirmations.length) {
            currentAffirmationIndex = 0;
        }

        const utterance = new SpeechSynthesisUtterance(selectedAffirmations[currentAffirmationIndex]);
        const voices = speechSynthesis.getVoices();
        const selectedVoiceIndex = document.getElementById('voiceSelect').value;
        utterance.voice = voices[selectedVoiceIndex];
        utterance.rate = document.getElementById('subliminalEffect').checked ? 1.5 : 1.0;
        utterance.volume = document.getElementById('subliminalEffect').checked ? 0.3 : 1.0;

        utterance.onend = () => {
            currentAffirmationIndex++;
            if (isPlaying) setTimeout(playNextAffirmation, 3000);
        };

        speechSynthesis.speak(utterance);
    }

    function pauseAffirmations() {
        isPlaying = false;
        document.getElementById('playPauseButton').textContent = "Play Selected in Loop";
        speechSynthesis.cancel();
    }

    // Load voice list on page load
    window.speechSynthesis.onvoiceschanged = populateBrowserVoices;

        // Add affirmation to list
        function addAffirmation() {
            const text = document.getElementById('affirmationInput').value;
            if (!text) {
                alert("Please enter an affirmation to add.");
                return;
            }
            affirmations.push(text);
            localStorage.setItem('affirmations', JSON.stringify(affirmations));
            document.getElementById('affirmationInput').value = '';
            updateAffirmationList();
        }

        // Update affirmation list display
       // Update affirmation list display with checkboxes for selection
function updateAffirmationList() {
    const list = document.getElementById('affirmationList');
    list.innerHTML = '';
    affirmations.forEach((text, index) => {
        const item = document.createElement('li');
        item.className = "affirmation";
        item.innerHTML = `
            <input type="checkbox" class="affirmationCheckbox" data-index="${index}">
            <span>${text}</span>
            <div class="controls">
                <button onclick="playAffirmation(${index})">Play</button>
                <button onclick="editAffirmation(${index})">Edit</button>
                <button onclick="deleteAffirmation(${index})">Delete</button>
            </div>`;
        list.appendChild(item);
    });
}
 

         // Play specific affirmation with selected voice
    function playAffirmation(index) {
        const utterance = new SpeechSynthesisUtterance(affirmations[index]);
        const voices = speechSynthesis.getVoices();
        const selectedVoiceIndex = document.getElementById('voiceSelect').value;
        utterance.voice = voices[selectedVoiceIndex];
        utterance.rate = document.getElementById('subliminalEffect').checked ? 1.5 : 1.0;
        utterance.volume = document.getElementById('subliminalEffect').checked ? 0.3 : 1.0;
        speechSynthesis.speak(utterance);
    }

        // Edit specific affirmation
        function editAffirmation(index) {
            const newText = prompt("Edit your affirmation:", affirmations[index]);
            if (newText !== null) {
                affirmations[index] = newText;
                localStorage.setItem('affirmations', JSON.stringify(affirmations));
                updateAffirmationList();
            }
        }

        // Delete specific affirmation
        function deleteAffirmation(index) {
            affirmations.splice(index, 1);
            localStorage.setItem('affirmations', JSON.stringify(affirmations));
            updateAffirmationList();
        }

     

        // Import affirmations
        function importAffirmations() {
            const text = document.getElementById('importExportText').value;
            if (!text) return;
            affirmations = text.split(',').map(aff => aff.trim());
            localStorage.setItem('affirmations', JSON.stringify(affirmations));
            updateAffirmationList();
        }

        // Export affirmations
        function exportAffirmations() {
            document.getElementById('importExportText').value = affirmations.join(', ');
        }

        // Binaural beat frequency dropdown custom option handler
        document.getElementById('leftFreq').addEventListener('change', (e) => {
            document.getElementById('customLeftFreq').style.display = e.target.value === 'custom' ? 'inline' : 'none';
        });
        document.getElementById('rightFreq').addEventListener('change', (e) => {
            document.getElementById('customRightFreq').style.display = e.target.value === 'custom' ? 'inline' : 'none';
        });

        // Start binaural beats
        function startBinauralBeats() {
            if (audioContext) audioContext.close();
            audioContext = new (window.AudioContext || window.webkitAudioContext)();

            const leftFrequency = parseFloat(document.getElementById('leftFreq').value === 'custom' ? document.getElementById('customLeftFreq').value : document.getElementById('leftFreq').value);
            const rightFrequency = parseFloat(document.getElementById('rightFreq').value === 'custom' ? document.getElementById('customRightFreq').value : document.getElementById('rightFreq').value);

            leftOscillator = audioContext.createOscillator();
            rightOscillator = audioContext.createOscillator();
            leftOscillator.frequency.value = leftFrequency;
            rightOscillator.frequency.value = rightFrequency;

            const leftGain = audioContext.createGain();
            const rightGain = audioContext.createGain();
            leftGain.gain.value = 0.1;
            rightGain.gain.value = 0.1;

            const leftPanner = audioContext.createStereoPanner();
            const rightPanner = audioContext.createStereoPanner();
            leftPanner.pan.value = -1;
            rightPanner.pan.value = 1;

            leftOscillator.connect(leftGain).connect(leftPanner).connect(audioContext.destination);
            rightOscillator.connect(rightGain).connect(rightPanner).connect(audioContext.destination);

            leftOscillator.start();
            rightOscillator.start();
        }

        // Stop binaural beats
        function stopBinauralBeats() {
            if (leftOscillator) leftOscillator.stop();
            if (rightOscillator) rightOscillator.stop();
            if (audioContext) audioContext.close();
        }

        // Initialize affirmations from storage
        updateAffirmationList();
    </script>
</body>
</html>
