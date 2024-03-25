#define my_tapping_term 170
#define my_quick_tapping_term 112
#define my_ak_delay 40

// layers
#define DEFAULT 0
#define l_nav 1
#define LOWER 2
#define MAGIC 3
#define FACTORY_TEST 4
#define l_akA 12
#define l_akD 11
#define l_akR 10
#define l_akS 9
#define l_akT 8
#define l_akE 7
#define l_akU 6
#define l_akO 13

  //
    // Glove80 key positions index for positional hold-tap
    // - https://discord.com/channels/877392805654306816/937645688244826154/1066713913351221248
    // - https://media.discordapp.net/attachments/937645688244826154/1066713913133121556/image.png
    //
    // |------------------------|------------------------|
    // | LEFT_HAND_KEYS         |        RIGHT_HAND_KEYS |
    // |                        |                        |
    // |  0  1  2  3  4         |          5  6  7  8  9 |
    // | 10 11 12 13 14 15      |      16 17 18 19 20 21 |
    // | 22 23 24 25 26 27      |      28 29 30 31 32 33 |
    // | 34 35 36 37 38 39      |      40 41 42 43 44 45 |
    // | 46 47 48 49 50 51      |      58 59 60 61 62 63 |
    // | 64 65 66 67 68         |         75 76 77 78 79 |
    // |                69 52   |   57 74                |
    // |                 70 53  |  56 73                 |
    // |                  71 54 | 55 72                  |
    // |------------------------|------------------------|
    //
    #define LEFT_HAND_KEYS  0  1  2  3  4 10 11 12 13 14 15 22 23 24 25 26 27 34 35 36 37 38 39 46 47 48 49 50 51 64 65 66 67 68
    #define RIGHT_HAND_KEYS 5  6  7  8  9 16 17 18 19 20 21 28 29 30 31 32 33 40 41 42 43 44 45 58 59 60 61 62 63 75 76 77 78 79
    #define THUMB_KEYS 69 52 57 74 70 53 56 73 71 54   55 72
