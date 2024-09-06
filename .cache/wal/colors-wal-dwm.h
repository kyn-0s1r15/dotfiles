static const char norm_fg[] = "#e9cbc0";
static const char norm_bg[] = "#121948";
static const char norm_border[] = "#a38e86";

static const char sel_fg[] = "#e9cbc0";
static const char sel_bg[] = "#5867A2";
static const char sel_border[] = "#e9cbc0";

static const char urg_fg[] = "#e9cbc0";
static const char urg_bg[] = "#324DA0";
static const char urg_border[] = "#324DA0";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
