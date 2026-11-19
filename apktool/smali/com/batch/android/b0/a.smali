.class public Lcom/batch/android/b0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/a0/e;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/batch/android/b0/a;->a()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/batch/android/b0/a;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 225
    const-string v1, "generic1_h-cta"

    const-string v2, "generic1_base"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "generic1-h-cta"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v1, "generic1_v-cta"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "generic1-v-cta"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v1, "image1_fullscreen"

    const-string v2, "image1_base"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "image1-fullscreen"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "image1_detached"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "image1-detached"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/batch/android/b0/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/batch/android/b0/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    :goto_1
    move v1, v0

    goto/16 :goto_2

    :sswitch_0
    const-string p0, "image1_base"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0xa

    goto/16 :goto_2

    :sswitch_1
    const-string p0, "image1_detached"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0x9

    goto/16 :goto_2

    :sswitch_2
    const-string p0, "banner1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    const/16 v1, 0x8

    goto :goto_2

    :sswitch_3
    const-string p0, "image1_fullscreen"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x7

    goto :goto_2

    :sswitch_4
    const-string p0, "webview1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x6

    goto :goto_2

    :sswitch_5
    const-string p0, "generic1_base"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    const/4 v1, 0x5

    goto :goto_2

    :sswitch_6
    const-string p0, "modal1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_1

    :cond_a
    const/4 v1, 0x4

    goto :goto_2

    :sswitch_7
    const-string p0, "modal-icon"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_1

    :cond_b
    const/4 v1, 0x3

    goto :goto_2

    :sswitch_8
    const-string p0, "generic1_v-cta"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_1

    :cond_c
    const/4 v1, 0x2

    goto :goto_2

    :sswitch_9
    const-string p0, "generic1_h-cta"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_1

    :cond_d
    const/4 v1, 0x1

    goto :goto_2

    :sswitch_a
    const-string p0, "banner-icon"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_1

    :cond_e
    :goto_2
    packed-switch v1, :pswitch_data_0

    return-object v2

    :pswitch_0
    const-string p0, "@android{#root{statusbar-bg:#000000;statusbar:dark}}*{--close-bg-color:#000000;--close-color:#ffffff;--bg-color:#77000000;--container-bg-color:#000000}#close{background-color:var(--close-bg-color);color:var(--close-color)}#background{background-color:var(--bg-color)}#container{background-color:var(--container-bg-color)}"

    return-object p0

    :pswitch_1
    const-string p0, "@android{#close{z-index:11}#container{elevation:10}}*{--ios-shadow:15 0.5 #000000;--corner-radius:5}#container{shadow-layer:var(--ios-shadow);border-radius:var(--corner-radius)}"

    return-object p0

    :pswitch_2
    const-string p0, "@android{#root{background-color:var(--bg-color);margin:var(--margin);elevation:var(--android-shadow);border-radius:var(--corner-radius)}.btn{elevation:0}#countdown{height:4}#close{margin:0}}@ios{#root{background-color:#00000000;statusbar:var(--mode)}#content{background-color:var(--bg-color);margin:var(--margin);border-radius:var(--corner-radius);shadow-layer:var(--ios-shadow)}}@media ios and (min-width:768){#content{margin:15;border-radius:5;shadow-layer:15 .5 #000000;max-width:500;align:var(--ios-responsive-align)}}*{--mode:auto;--valign:bottom;--countdown-color:#40a3e9;--countdown-valign:top;--ios-shadow:15 0.5 #000000;--ios-responsive-align:center;--android-shadow:10;--title-color:#000000;--title-font-weight:bold;--title-font-size:15;--body-font-size:13;--body-color:#000000;--bg-color:#f1f1f1;--text-side-padding:45;--close-color:#000000;--close-bg-color:#00000000;--cta-android-shadow:auto;--cta-font-size:14;--cta-font-weight:bold;--cta1-color:#40a3e9;--cta1-text-color:#ffffff;--cta2-color:#dbdbdb;--cta2-text-color:#000000;--cta-container-width:100%;--margin:0;--corner-radius:0}#content{vertical-align:var(--valign)}.text{text-align:center;margin-left:var(--text-side-padding);margin-right:var(--text-side-padding);margin-top:20}#body{margin-bottom:20;color:var(--body-color);font-size:var(--body-font-size);font-weight:var(--body-font-weight);padding-left:5;padding-right:5}#title{color:var(--title-color);font-size:var(--title-font-size);font-weight:var(--title-font-weight)}#close{background-color:var(--close-bg-color);margin:10;color:var(--close-color);glyph-padding:20}#ctas{width:var(--cta-container-width);margin-bottom:10}#cta1{color:var(--cta1-text-color);background-color:var(--cta1-color)}#cta2{color:var(--cta2-text-color);background-color:var(--cta2-color)}.btn{font-size:var(--cta-font-size);font-weight:var(--cta-font-weight)}.btn-v{width:100%;margin-left:20;margin-right:20;margin-bottom:10;border-radius:5;padding:10;elevation:var(--cta-android-shadow)}.btn-h{flex-grow:1;border-radius:5;padding:10;elevation:var(--cta-android-shadow)}#img{z-index:back;height:fill;scale:fill;align:left;width:auto}#countdown{height:2;color:var(--countdown-color);vertical-align:var(--countdown-valign)}"

    return-object p0

    :pswitch_3
    const-string p0, "*{--image-bs:fit}#image{scale:var(--image-bs)}"

    return-object p0

    :pswitch_4
    const-string p0, "*{--mode:light;--ios-loader-size:large;--android-statusbar-bg:#000000;--android-statusbar-fg:light;--bg-color:#000000;--close-bg-color:#000000;--close-color:#ffffff;--ios-safe-area:no}@android{#root{statusbar:var(--android-statusbar-fg);statusbar-bg:var(--android-statusbar-bg)}}@ios{#root{statusbar:var(--mode);loader-size:var(--ios-loader-size)}#webview{safe-area:var(--ios-safe-area)}}#close{background-color:var(--close-bg-color);color:var(--close-color)}#root{background-color:var(--bg-color);loader:var(--mode)}"

    return-object p0

    :pswitch_5
    const-string p0, "@android{.text{flex-shrink:0}#body{flex-grow:0;flex-shrink:1}.btn{flex-shrink:0}#ctas{flex-shrink:0}#close{padding:10;margin-top:10;margin-right:10}}@ios{#root{statusbar:var(--mode)}}*{--mode:light;--content-vpadding:8;--general-bg:#923d6f;--close-bg:#ffffff;--close-c:#8d426e;--image-bs:fill;--header-fs:13;--header-fw:bold;--header-m:0 0 10 0;--header-c:#c784ac;--title-fs:24;--title-fw:bold;--title-m:0 10 10 10;--title-c:#ffffff;--text-fs:15;--text-fw:normal;--text-m:0 10 0 10;--text-c:#e5c7d9;--cta-c-p:0;--cta1-m:0;--cta1-br:0;--cta1-c:#ffffff;--cta1-bg:transparent;--cta1-fw:normal;--cta2-m:0;--cta2-br:0;--cta2-c:#c784ac;--cta2-bg:transparent;--cta2-fw:normal}#placeholder{loader:var(--mode)}.text{margin-left:30;margin-right:30}#root{background-color:var(--general-bg);statusbar-bg:translucent}#image{scale:var(--image-bs)}.btn{elevation:0;background-color:transparent;color:#ffffff;font-weight:var(--cta-fw)}#ctas{safe-area:copy-padding;padding:var(--cta-p)}#close{background-color:var(--close-bg);margin-top:20;margin-right:20;color:var(--close-c);glyph-padding:20}#body{font-size:var(--text-fs);font-weight:var(--text-fw);margin:var(--text-m);color:var(--text-c);line-height:1.2;padding-left:5;padding-right:5}#h1{font-size:var(--header-fs);font-weight:var(--header-fw);margin:var(--header-m);color:var(--header-c)}#h2{font-size:var(--title-fs);font-weight:var(--title-fw);margin:var(--title-m);color:var(--title-c);line-height:1.1}#cta1{margin:var(--cta1-m);border-radius:var(--cta1-br);color:var(--cta1-c);background-color:var(--cta1-bg);font-weight:var(--cta1-fw)}#cta2{margin:var(--cta2-m);border-radius:var(--cta2-br);color:var(--cta2-c);background-color:var(--cta2-bg);font-weight:var(--cta2-fw)}#content{padding-top:var(--content-vpadding);padding-bottom:var(--content-vpadding);safe-area:copy-padding;safe-area-fit:loose}"

    return-object p0

    :pswitch_6
    const-string p0, "@android{#root{background-color:var(--backdrop-bg-color);statusbar-bg:var(--android-statusbar-bg)}#container{vertical-align:center;background-color:var(--bg-color);margin:var(--margin);elevation:var(--android-shadow);border-radius:var(--corner-radius)}.btn{elevation:0}#close{z-index:151;vertical-align:top;margin:0}#img{z-index:150}#countdown{z-index:152}}@ios{#root{background-color:var(--backdrop-bg-color);statusbar:var(--mode)}#content{background-color:var(--bg-color);margin:var(--margin);border-radius:var(--corner-radius);shadow-layer:var(--ios-shadow)}}@media ios and (min-width:768){#content{margin:15;border-radius:5;shadow-layer:15 .5 #000000;width:500;max-width:500;align:var(--ios-responsive-align)}}*{--mode:auto;--android-statusbar-bg:translucent;--valign:center;--countdown-color:#40a3e9;--countdown-valign:top;--ios-shadow:15 0.5 #000000;--ios-responsive-align:center;--android-shadow:10;--title-color:#000000;--title-font-weight:bold;--title-font-size:15;--body-font-size:13;--body-color:#000000;--bg-color:#f1f1f1;--backdrop-bg-color:#88000000;--text-side-padding:45;--close-color:#000000;--close-bg-color:#00000000;--cta-android-shadow:auto;--cta-font-size:14;--cta-font-weight:bold;--cta1-color:#40a3e9;--cta1-text-color:#ffffff;--cta2-color:#dbdbdb;--cta2-text-color:#000000;--cta-container-width:100%;--margin:10;--corner-radius:5}#content{vertical-align:var(--valign)}.text{text-align:center;margin-left:var(--text-side-padding);margin-right:var(--text-side-padding);margin-top:20}#body{margin-bottom:20;color:var(--body-color);font-size:var(--body-font-size);font-weight:var(--body-font-weight);padding-left:5;padding-right:5}#title{color:var(--title-color);font-size:var(--title-font-size);font-weight:var(--title-font-weight)}#close{background-color:var(--close-bg-color);margin:10;color:var(--close-color);glyph-padding:20}#ctas{width:var(--cta-container-width);margin-bottom:10}#cta1{color:var(--cta1-text-color);background-color:var(--cta1-color)}#cta2{color:var(--cta2-text-color);background-color:var(--cta2-color)}.btn{font-size:var(--cta-font-size);font-weight:var(--cta-font-weight)}.btn-v{width:100%;margin-left:20;margin-right:20;margin-bottom:10;border-radius:5;padding:10;elevation:var(--cta-android-shadow)}.btn-h{flex-grow:1;border-radius:5;padding:10;elevation:var(--cta-android-shadow)}#img{z-index:back;height:fill;scale:fill;align:left;width:auto}#countdown{height:2;color:var(--countdown-color);vertical-align:var(--countdown-valign)}"

    return-object p0

    :pswitch_7
    const-string p0, "*{--cta-v-m:10;--cta-v-p:15}.btn{margin:var(--cta-v-m);padding:var(--cta-v-p)}"

    return-object p0

    :pswitch_8
    const-string p0, "*{--separator-bc:#DCA6C6;--separator-bw:1;--cta-h-m:0;--ios-padding-hack:-1}@android{#ctas{border-color:var(--separator-bc);border-width:var(--separator-bw);margin:-1}}@ios{.ctas-h-sep{width:0}.btn{compression-res-h:1000;content-hug-h:250}#ctas{height:50;padding-left:var(--ios-padding-hack);padding-right:var(--ios-padding-hack);padding-bottom:var(--ios-padding-hack)}#ctas-inner{border-color:var(--separator-bc);border-width:var(--separator-bw)}}.btn{height:50;margin:var(--cta-h-m)}"

    return-object p0

    :pswitch_9
    const-string p0, "*{--image-bs:fill;--image-h:150}#img{z-index:back;height:var(--image-h);scale:var(--image-bs);align:left;vertical-align:top;width:auto}#title{margin-top:var(--image-h);padding-top:20}"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x746d8586 -> :sswitch_a
        -0x6cab3c1a -> :sswitch_9
        -0x6be5f30c -> :sswitch_8
        -0x58e5f867 -> :sswitch_7
        -0x3fb4a4dc -> :sswitch_6
        -0x350fbd4a -> :sswitch_5
        -0x2993bca8 -> :sswitch_4
        -0x18b90e9c -> :sswitch_3
        -0x1415997b -> :sswitch_2
        0x427d575b -> :sswitch_1
        0x46752f3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
