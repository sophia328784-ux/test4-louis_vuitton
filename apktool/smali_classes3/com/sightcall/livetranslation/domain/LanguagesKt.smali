.class public final Lcom/sightcall/livetranslation/domain/LanguagesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u001a\u0010\t\u001a\u0004\u0018\u00010\u0006*\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\n\u001a\u00020\u0001\u001a\u0018\u0010\u000b\u001a\u00020\u000c*\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\n\u001a\u00020\u0001\u001a\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005*\u0008\u0012\u0004\u0012\u00020\u00060\u0005\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "defaultSelectedLanguage",
        "",
        "getDefaultSelectedLanguage",
        "()Ljava/lang/String;",
        "defaultLanguages",
        "",
        "Lcom/sightcall/livetranslation/domain/Language;",
        "getDefaultLanguages",
        "()Ljava/util/List;",
        "getLanguage",
        "tag",
        "getIndexOf",
        "",
        "names",
        "livetranslation_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final defaultLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultSelectedLanguage:Ljava/lang/String; = "en-US"


# direct methods
.method static constructor <clinit>()V
    .locals 97

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v0, "ar-BH"

    const-string v2, "Arabic (Bahrain), modern standard"

    invoke-direct {v1, v0, v2}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/sightcall/livetranslation/domain/Language;

    const-string v0, "ar-EG"

    const-string v3, "Arabic (Egypt)"

    invoke-direct {v2, v0, v3}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/sightcall/livetranslation/domain/Language;

    const-string v0, "ar-IQ"

    const-string v4, "Arabic (Iraq)"

    invoke-direct {v3, v0, v4}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/sightcall/livetranslation/domain/Language;

    const-string v0, "ar-IL"

    const-string v5, "Arabic (Israel)"

    invoke-direct {v4, v0, v5}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/sightcall/livetranslation/domain/Language;

    const-string v0, "ar-JO"

    const-string v6, "Arabic (Jordan)"

    invoke-direct {v5, v0, v6}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/sightcall/livetranslation/domain/Language;

    const-string v0, "ar-KW"

    const-string v7, "Arabic (Kuwait)"

    invoke-direct {v6, v0, v7}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/sightcall/livetranslation/domain/Language;

    const-string v0, "ar-LB"

    const-string v8, "Arabic (Lebanon)"

    invoke-direct {v7, v0, v8}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/sightcall/livetranslation/domain/Language;

    const-string v0, "ar-OM"

    const-string v9, "Arabic (Oman)"

    invoke-direct {v8, v0, v9}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/sightcall/livetranslation/domain/Language;

    const-string v0, "ar-QA"

    const-string v10, "Arabic (Qatar)"

    invoke-direct {v9, v0, v10}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/sightcall/livetranslation/domain/Language;

    const-string v0, "ar-SA"

    const-string v11, "Arabic (Saudi Arabia)"

    invoke-direct {v10, v0, v11}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/sightcall/livetranslation/domain/Language;

    const-string v0, "ar-PS"

    const-string v12, "Arabic (State of Palestine)"

    invoke-direct {v11, v0, v12}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/sightcall/livetranslation/domain/Language;

    const-string v0, "ar-SY"

    const-string v13, "Arabic (Syria)"

    invoke-direct {v12, v0, v13}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/sightcall/livetranslation/domain/Language;

    const-string v0, "ar-AE"

    const-string v14, "Arabic (United Arab Emirates)"

    invoke-direct {v13, v0, v14}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/sightcall/livetranslation/domain/Language;

    const-string v0, "bg-BG"

    const-string v15, "Bulgarian (Bulgaria)"

    invoke-direct {v14, v0, v15}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/sightcall/livetranslation/domain/Language;

    const-string v0, "ca-ES"

    move-object/from16 v16, v1

    const-string v1, "Catalan (Spain)"

    invoke-direct {v15, v0, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v1, "zh-HK"

    move-object/from16 v17, v2

    const-string v2, "Chinese (Cantonese, Traditional)"

    invoke-direct {v0, v1, v2}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "zh-CN"

    move-object/from16 v18, v0

    const-string v0, "Chinese (Mandarin, Simplified)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "zh-TW"

    move-object/from16 v19, v1

    const-string v1, "Chinese (Taiwanese Mandarin)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "hr-HR"

    move-object/from16 v20, v0

    const-string v0, "Croatian (Croatia)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "cs-CZ"

    move-object/from16 v21, v1

    const-string v1, "Czech (Czech Republic)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "da-DK"

    move-object/from16 v22, v0

    const-string v0, "Danish (Denmark)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "nl-NL"

    move-object/from16 v23, v1

    const-string v1, "Dutch (Netherlands)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "en-AU"

    move-object/from16 v24, v0

    const-string v0, "English (Australia)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "en-CA"

    move-object/from16 v25, v1

    const-string v1, "English (Canada)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "en-GH"

    move-object/from16 v26, v0

    const-string v0, "English (Ghana)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "en-HK"

    move-object/from16 v27, v1

    const-string v1, "English (Hong Kong)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "en-IN"

    move-object/from16 v28, v0

    const-string v0, "English (India)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "en-IE"

    move-object/from16 v29, v1

    const-string v1, "English (Ireland)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "en-KE"

    move-object/from16 v30, v0

    const-string v0, "English (Kenya)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "en-NZ"

    move-object/from16 v31, v1

    const-string v1, "English (New Zealand)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "en-NG"

    move-object/from16 v32, v0

    const-string v0, "English (Nigeria)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "en-PH"

    move-object/from16 v33, v1

    const-string v1, "English (Philippines)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "en-SG"

    move-object/from16 v34, v0

    const-string v0, "English (Singapore)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "en-ZA"

    move-object/from16 v35, v1

    const-string v1, "English (South Africa)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "en-TZ"

    move-object/from16 v36, v0

    const-string v0, "English (Tanzania)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "en-GB"

    move-object/from16 v37, v1

    const-string v1, "English (United Kingdom)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "en-US"

    move-object/from16 v38, v0

    const-string v0, "English (United States)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "et-EE"

    move-object/from16 v39, v1

    const-string v1, "Estonian (Estonia)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "fil-PH"

    move-object/from16 v40, v0

    const-string v0, "Filipino (Philippines)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "fi-FI"

    move-object/from16 v41, v1

    const-string v1, "Finnish (Finland)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "fr-CA"

    move-object/from16 v42, v0

    const-string v0, "French (Canada)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "fr-FR"

    move-object/from16 v43, v1

    const-string v1, "French (France)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "fr-CH"

    move-object/from16 v44, v0

    const-string v0, "French (Switzerland)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "de-AT"

    move-object/from16 v45, v1

    const-string v1, "German (Austria)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "de-DE"

    move-object/from16 v46, v0

    const-string v0, "German (Germany)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "el-GR"

    move-object/from16 v47, v1

    const-string v1, "Greek (Greece)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "gu-IN"

    move-object/from16 v48, v0

    const-string v0, "Gujarati (Indian)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "hi-IN"

    move-object/from16 v49, v1

    const-string v1, "Hindi (India)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "hu-HU"

    move-object/from16 v50, v0

    const-string v0, "Hungarian (Hungary)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "id-ID"

    move-object/from16 v51, v1

    const-string v1, "Indonesian (Indonesia)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "ga-IE"

    move-object/from16 v52, v0

    const-string v0, "Irish(Ireland)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "it-IT"

    move-object/from16 v53, v1

    const-string v1, "Italian (Italy)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "ja-JP"

    move-object/from16 v54, v0

    const-string v0, "Japanese (Japan)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "ko-KR"

    move-object/from16 v55, v1

    const-string v1, "Korean (Korea)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "lv-LV"

    move-object/from16 v56, v0

    const-string v0, "Latvian (Latvia)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "lt-LT"

    move-object/from16 v57, v1

    const-string v1, "Lithuanian (Lithuania)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "ms-MY"

    move-object/from16 v58, v0

    const-string v0, "Malay (Malaysia)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "mt-MT"

    move-object/from16 v59, v1

    const-string v1, "Maltese (Malta)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "mr-IN"

    move-object/from16 v60, v0

    const-string v0, "Marathi (India)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "nb-NO"

    move-object/from16 v61, v1

    const-string v1, "Norwegian (Bokm\u00e5l, Norway)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "pl-PL"

    move-object/from16 v62, v0

    const-string v0, "Polish (Poland)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "pt-BR"

    move-object/from16 v63, v1

    const-string v1, "Portuguese (Brazil)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "pt-PT"

    move-object/from16 v64, v0

    const-string v0, "Portuguese (Portugal)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "ro-RO"

    move-object/from16 v65, v1

    const-string v1, "Romanian (Romania)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "ru-RU"

    move-object/from16 v66, v0

    const-string v0, "Russian (Russia)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "sk-SK"

    move-object/from16 v67, v1

    const-string v1, "Slovak (Slovakia)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "sl-SI"

    move-object/from16 v68, v0

    const-string v0, "Slovenian (Slovenia)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-AR"

    move-object/from16 v69, v1

    const-string v1, "Spanish (Argentina)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-BO"

    move-object/from16 v70, v0

    const-string v0, "Spanish (Bolivia)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-CL"

    move-object/from16 v71, v1

    const-string v1, "Spanish (Chile)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-CO"

    move-object/from16 v72, v0

    const-string v0, "Spanish (Colombia)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-CR"

    move-object/from16 v73, v1

    const-string v1, "Spanish (Costa Rica)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-CU"

    move-object/from16 v74, v0

    const-string v0, "Spanish (Cuba)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-DO"

    move-object/from16 v75, v1

    const-string v1, "Spanish (Dominican Republic)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-EC"

    move-object/from16 v76, v0

    const-string v0, "Spanish (Ecuador)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-SV"

    move-object/from16 v77, v1

    const-string v1, "Spanish (El Salvador)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-GQ"

    move-object/from16 v78, v0

    const-string v0, "Spanish (Equatorial Guinea)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-GT"

    move-object/from16 v79, v1

    const-string v1, "Spanish (Guatemala)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-HN"

    move-object/from16 v80, v0

    const-string v0, "Spanish (Honduras)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-MX"

    move-object/from16 v81, v1

    const-string v1, "Spanish (Mexico)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-NI"

    move-object/from16 v82, v0

    const-string v0, "Spanish (Nicaragua)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-PA"

    move-object/from16 v83, v1

    const-string v1, "Spanish (Panama)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-PY"

    move-object/from16 v84, v0

    const-string v0, "Spanish (Paraguay)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-PE"

    move-object/from16 v85, v1

    const-string v1, "Spanish (Peru)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-PR"

    move-object/from16 v86, v0

    const-string v0, "Spanish (Puerto Rico)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-ES"

    move-object/from16 v87, v1

    const-string v1, "Spanish (Spain)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-UY"

    move-object/from16 v88, v0

    const-string v0, "Spanish (Uruguay)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-US"

    move-object/from16 v89, v1

    const-string v1, "Spanish (USA)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "es-VE"

    move-object/from16 v90, v0

    const-string v0, "Spanish (Venezuela)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "sv-SE"

    move-object/from16 v91, v1

    const-string v1, "Swedish (Sweden)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "ta-IN"

    move-object/from16 v92, v0

    const-string v0, "Tamil (India)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "te-IN"

    move-object/from16 v93, v1

    const-string v1, "Telugu (India)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "th-TH"

    move-object/from16 v94, v0

    const-string v0, "Thai (Thailand)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "tr-TR"

    move-object/from16 v95, v1

    const-string v1, "Turkish (Turkey)"

    invoke-direct {v0, v2, v1}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/livetranslation/domain/Language;

    const-string v2, "vi-VN"

    move-object/from16 v96, v0

    const-string v0, "Vietnamese (Vietnam)"

    invoke-direct {v1, v2, v0}, Lcom/sightcall/livetranslation/domain/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v35

    move-object/from16 v35, v37

    move-object/from16 v37, v39

    move-object/from16 v39, v41

    move-object/from16 v41, v43

    move-object/from16 v43, v45

    move-object/from16 v45, v47

    move-object/from16 v47, v49

    move-object/from16 v49, v51

    move-object/from16 v51, v53

    move-object/from16 v53, v55

    move-object/from16 v55, v57

    move-object/from16 v57, v59

    move-object/from16 v59, v61

    move-object/from16 v61, v63

    move-object/from16 v63, v65

    move-object/from16 v65, v67

    move-object/from16 v67, v69

    move-object/from16 v69, v71

    move-object/from16 v71, v73

    move-object/from16 v73, v75

    move-object/from16 v75, v77

    move-object/from16 v77, v79

    move-object/from16 v79, v81

    move-object/from16 v81, v83

    move-object/from16 v83, v85

    move-object/from16 v85, v87

    move-object/from16 v87, v89

    move-object/from16 v89, v91

    move-object/from16 v91, v93

    move-object/from16 v93, v95

    move-object/from16 v95, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v32

    move-object/from16 v32, v34

    move-object/from16 v34, v36

    move-object/from16 v36, v38

    move-object/from16 v38, v40

    move-object/from16 v40, v42

    move-object/from16 v42, v44

    move-object/from16 v44, v46

    move-object/from16 v46, v48

    move-object/from16 v48, v50

    move-object/from16 v50, v52

    move-object/from16 v52, v54

    move-object/from16 v54, v56

    move-object/from16 v56, v58

    move-object/from16 v58, v60

    move-object/from16 v60, v62

    move-object/from16 v62, v64

    move-object/from16 v64, v66

    move-object/from16 v66, v68

    move-object/from16 v68, v70

    move-object/from16 v70, v72

    move-object/from16 v72, v74

    move-object/from16 v74, v76

    move-object/from16 v76, v78

    move-object/from16 v78, v80

    move-object/from16 v80, v82

    move-object/from16 v82, v84

    move-object/from16 v84, v86

    move-object/from16 v86, v88

    move-object/from16 v88, v90

    move-object/from16 v90, v92

    move-object/from16 v92, v94

    move-object/from16 v94, v96

    filled-new-array/range {v1 .. v95}, [Lcom/sightcall/livetranslation/domain/Language;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sightcall/livetranslation/domain/LanguagesKt;->defaultLanguages:Ljava/util/List;

    return-void
.end method

.method public static final getDefaultLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sightcall/livetranslation/domain/LanguagesKt;->defaultLanguages:Ljava/util/List;

    return-object v0
.end method

.method public static final getDefaultSelectedLanguage()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sightcall/livetranslation/domain/LanguagesKt;->defaultSelectedLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public static final getIndexOf(Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/livetranslation/domain/Language;

    invoke-virtual {v1}, Lcom/sightcall/livetranslation/domain/Language;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final getLanguage(Ljava/util/List;Ljava/lang/String;)Lcom/sightcall/livetranslation/domain/Language;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sightcall/livetranslation/domain/Language;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sightcall/livetranslation/domain/Language;

    invoke-virtual {v1}, Lcom/sightcall/livetranslation/domain/Language;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/sightcall/livetranslation/domain/Language;

    return-object v0
.end method

.method public static final names(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/livetranslation/domain/Language;

    invoke-virtual {v1}, Lcom/sightcall/livetranslation/domain/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
