static const char norm_fg[] = "#e3d5cc";
static const char norm_bg[] = "#080C15";
static const char norm_border[] = "#9e958e";

static const char sel_fg[] = "#e3d5cc";
static const char sel_bg[] = "#D7976B";
static const char sel_border[] = "#e3d5cc";

static const char urg_fg[] = "#e3d5cc";
static const char urg_bg[] = "#A86154";
static const char urg_border[] = "#A86154";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
