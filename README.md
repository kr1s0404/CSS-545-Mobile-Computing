
# DailyTarot

**Bo Fu, Kris Yu**  
Version 1.0  

## Summary of Project

Unlock the secrets of your destiny and embrace the power of tarot with our intuitive app designed exclusively for enthusiasts. Discover your daily fortune, gain profound insights with personalized tarot spreads, and explore the depths of self-understanding. Experience the transformative magic of tarot and create a path towards fulfillment. Your destiny awaits.

## Project Analysis

### Value Proposition

#### Problem/Pain Points:

- Many users seek personalized daily insights or guidance but find traditional tarot readings either too complex or inaccessible.
- Existing tarot apps often offer static, generalized interpretations that may not feel relevant to users’ personal situations, reducing their perceived value.
- Spiritual wellness and self-care are growing trends, but many apps fail to blend the depth of tarot with modern, interactive technologies like AI.

#### Solution:

- DailyTarot solves this by combining traditional tarot card readings with the power of LLM AI, offering highly personalized, dynamic readings based on the user’s specific question.
- The app allows users to engage in daily rituals (e.g., “daily luck” predictions), which can help create habits and improve user retention.

#### Supporting Facts:

- The global self-care and wellness market is projected to reach $450 billion by 2025, with increasing interest in personalized wellness tools (e.g., daily horoscope apps).
- More than 75% of millennials and Gen Z are interested in spirituality and alternative practices like astrology and tarot, according to studies on modern spirituality trends.

### Primary Purpose

DailyTarot aims to help users gain daily insights into their lives through personalized tarot readings, using the advanced understanding of AI to provide meaningful, tailored interpretations.  
It is a tool for personal growth, introspection, and spiritual guidance, with the added fun of daily luck predictions. The app enhances the user’s journey of self-discovery, offering convenience and daily engagement through an accessible and modernized version of tarot practices.

### Target Audience

#### Demographic:

- **Age Group**: Primarily Millennials and Gen Z (18-35 years old).
- **Interest**: People interested in wellness, self-care, spirituality, tarot, and AI-driven personalized experiences.
- **Gender**: Mostly female users, as women statistically engage more with tarot, astrology, and similar wellness practices.
- **Tech Savviness**: Users who are comfortable with apps and mobile technology but may not have a deep understanding of tarot. Beginners or those looking for modernized interpretations.

#### Why This Demographic?

- These groups are most engaged in wellness, spiritual exploration, and tech-driven personal development tools.
- Tarot has a natural appeal for people interested in alternative practices, self-care routines, and finding meaning in everyday life.

#### How to Reach Them:

- **Social Media Marketing**: Instagram, TikTok, and YouTube are crucial for reaching this demographic, especially with influencers who focus on wellness, spirituality, and self-care.
- **Partnerships**: Collaborate with wellness bloggers, tarot influencers, or life coaches who have established trust with this audience.
- **App Store SEO**: Focus on keywords like “tarot readings,” “daily luck,” “personalized tarot,” and “AI tarot” to target those looking for tarot apps.

### Success Criteria

- **User Retention**: Success can be measured by how often users engage with the daily readings and return to the app. A goal could be a daily active user rate of 60% within 3 months of launch.
- **Public Good**: Helping users find comfort, reflection, or daily motivation through the app. Tracking the impact through user testimonials and social media shares.

## Competitor Analysis

- **Labyrinthos**: Known for its educational tarot app with gamification elements, but lacks the personalized AI-driven insights that DailyTarot offers.  
  - **Strength**: Strong tarot community.  
  - **Weakness**: Limited daily engagement features.

- **Golden Thread Tarot**: Provides tarot education and personalized readings, but it’s more manual, without AI integration.  
  - **Strength**: Rich tarot interpretation resources.  
  - **Weakness**: Static readings.

- **Co-Star and The Pattern**: While they focus more on astrology, they also offer personalized daily insights.  
  - **Strength**: AI-based predictions in astrology.  
  - **Weakness**: No tarot integration, so DailyTarot can target tarot-specific users.

- **Mystic Mondays**: Aesthetically designed tarot app with a modern twist, but it does not provide the dynamic AI-enhanced readings that could make DailyTarot stand out.  
  - **Strength**: Beautiful design.  
  - **Weakness**: Static readings with limited personalization.

## Monetization Model

- **Subscription Plans**: Introduce subscription tiers for ad-free experiences, deeper AI insights, personalized growth tracking, or exclusive content (e.g., deeper tarot lessons or additional card decks).
- **Ad Revenue**: Offer free users access to readings but with occasional ads, especially in between card draws.

## Initial Design

### Target of MVP
In the MVP (Minimum Viable Product) version of DailyTarot app, the goal is to implement core features that provide value to tarot enthusiasts while keeping the complexity low. The MVP will focus on these essential functionalities: 
- Daily Card: Users draw a single tarot card for a brief reading and suggestions
- Tarot Spread Reading: Users can draw cards from the default spread, and then get reading generated by AI
- History: Users can view recent tarot readings and daily horoscope
- Personal Setting: Users can set their basic profile information

### Scope and Limitations

- Daily Card only provides with single card draw and simple interpretation
- Tarot Spread Reading is limited to the default spread, and uses a pre-build API for card interpretations. Advanced tarot spreads and custom AI could be add later
- Reading History is stored locally
- Personal Setting contents a few simple settings

## UI/UX Design
- Navigation Bar: four options: Daily, Reading, History, Setting
- Daily: Tap to shuffle and draw card animation, then display the interpretation of card.
- Reading: Tap to shuffle, draw, and interpret tarot spreads
- History: List of saved readings and daily cards, tap one record to display the interpretation of this record
- Setting: Basic personal settings like notification options

https://www.figma.com/design/DgsGnPhagKHvK331XM9va0/DailyTarot?node-id=0-1&node-type=canvas&t=PnEi5wdALP0ZwbdP-0

### Technical Architecture

#### App Structure

- **Frameworks**:
  - Use Swift and SwiftUI for building the UI, ensuring a native iOS feel with clean, declarative UI elements.
  - MVVM (Model-View-ViewModel) pattern allows for separation of concerns, easier testing, and clear organization of UI, business logic, and data management layers.
  - Dependency Injection (DI) enables the injection of dependencies at runtime, making the code more modular and testable. DI will be useful for things like managing API services, database services, and analytics.

#### Storage Considerations

- **Local Storage**:
  - SwiftData or CoreData can be used for storing user preferences, saved readings, and daily luck history for offline access. These storage systems are excellent for managing structured data on the device.
  - Example use cases for local storage:
    - Previous tarot readings: Store the cards drawn and their AI-based interpretations.
    - User preferences: Themes, notifications, and reading history.
  - Keychain Services: For securely storing sensitive user data, such as authentication tokens or any personal details.

- **Remote Storage**:
  - **CloudKit**: Great choice for syncing data between devices, especially for users logged into iCloud. Store user profiles, tarot card interaction history, and personalized reading preferences.

#### LLM AI Integration

- For generating AI-enhanced tarot readings based on user questions, you’ll need to interact with a third-party LLM service (like OpenAI’s API or similar).

## Challenges and Open Questions

### LLM API Integration and Performance

- **Challenge**: Integrating a third-party LLM API can introduce latency issues, especially when dealing with real-time tarot readings.
- **Solution**:
  - Implement caching mechanisms for frequently asked questions or common tarot card combinations to reduce the need for repeated API calls.
  - Use background processing so that users can continue interacting with the app while the AI generates their reading.

### Offline Support and Local Storage

- **Challenge**: Users may want access to past readings or daily luck predictions when offline, but relying heavily on CloudKit and external APIs for real-time readings can limit the app’s usability without an internet connection.
- **Solution**:
  - Store recent readings and user preferences locally using SwiftData or CoreData to enable offline access.
  - Provide a limited set of tarot interpretations for offline use, allowing users to still perform basic readings even when they’re disconnected.

### Handling AI Interpretation Accuracy

- **Challenge**: Ensuring that AI-generated tarot interpretations feel meaningful and personalized for users.
- **Solution**:
  - Build a rich dataset of tarot card meanings and human-generated interpretations to help train or supplement the LLM’s responses.
  - Add user feedback after each reading so the system can learn and adjust future responses.
