.class public Lcom/sightcall/universal/ui/UniversalDisplayName;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;
    }
.end annotation


# instance fields
.field private displayName:Landroid/widget/LinearLayout;

.field private editText:Landroid/widget/EditText;

.field private languageSpinner:Landroid/widget/Spinner;

.field private ok:Landroid/widget/Button;

.field private selectLanguage:Landroid/widget/LinearLayout;

.field private skip:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sightcall/universal/ui/UniversalDisplayName;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/sightcall/universal/ui/UniversalDisplayName;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    invoke-direct {p0, p1}, Lcom/sightcall/universal/ui/UniversalDisplayName;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/sightcall/universal/ui/UniversalDisplayName;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;ZLcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sightcall/universal/ui/UniversalDisplayName;->instrumented$1$setup$-Lcom-sightcall-universal-displayname-DisplayNameAndLiveTranslation-Ljava-lang-String-Lcom-sightcall-universal-ui-UniversalDisplayName$DisplayNameCallback--V(Lcom/sightcall/universal/ui/UniversalDisplayName;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;ZLcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sightcall/universal/ui/UniversalDisplayName;Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;ZLcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/sightcall/universal/ui/UniversalDisplayName;->instrumented$0$setup$-Lcom-sightcall-universal-displayname-DisplayNameAndLiveTranslation-Ljava-lang-String-Lcom-sightcall-universal-ui-UniversalDisplayName$DisplayNameCallback--V(Lcom/sightcall/universal/ui/UniversalDisplayName;Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;ZLcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;Landroid/view/View;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/sightcall/universal/R$layout;->universal_activity_displayname:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/sightcall/universal/R$id;->displayname:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->displayName:Landroid/widget/LinearLayout;

    sget p1, Lcom/sightcall/universal/R$id;->livetranslation_language:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->selectLanguage:Landroid/widget/LinearLayout;

    sget p1, Lcom/sightcall/universal/R$id;->universal_spinner_language:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->languageSpinner:Landroid/widget/Spinner;

    sget p1, Lcom/sightcall/universal/R$id;->universal_displayame_edit:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->editText:Landroid/widget/EditText;

    sget p1, Lcom/sightcall/universal/R$id;->universal_displayname_button_ok:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->ok:Landroid/widget/Button;

    sget p1, Lcom/sightcall/universal/R$id;->universal_displayname_button_skip:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->skip:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x106000d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private static synthetic instrumented$0$setup$-Lcom-sightcall-universal-displayname-DisplayNameAndLiveTranslation-Ljava-lang-String-Lcom-sightcall-universal-ui-UniversalDisplayName$DisplayNameCallback--V(Lcom/sightcall/universal/ui/UniversalDisplayName;Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;ZLcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;Landroid/view/View;)V
    .locals 1

    invoke-static {p6}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/sightcall/universal/ui/UniversalDisplayName;->lambda$setup$0(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;ZLcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p6}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p6}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method private static synthetic instrumented$1$setup$-Lcom-sightcall-universal-displayname-DisplayNameAndLiveTranslation-Ljava-lang-String-Lcom-sightcall-universal-ui-UniversalDisplayName$DisplayNameCallback--V(Lcom/sightcall/universal/ui/UniversalDisplayName;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;ZLcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;Landroid/view/View;)V
    .locals 1

    invoke-static {p5}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/sightcall/universal/ui/UniversalDisplayName;->lambda$setup$1(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;ZLcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p5}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p5}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method private synthetic lambda$setup$0(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;ZLcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;Landroid/view/View;)V
    .locals 1

    iget-object p6, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->editText:Landroid/widget/EditText;

    invoke-virtual {p6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    sget-object v0, Lcom/sightcall/universal/model/DisplayMode$Mandatory;->INSTANCE:Lcom/sightcall/universal/model/DisplayMode$Mandatory;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/DisplayMode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->editText:Landroid/widget/EditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/sightcall/universal/ui/UniversalDisplayName;->userSelectedALanguage(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->languageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/domain/Language;

    invoke-interface {p5, p6, p0}, Lcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;->onResult(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/Language;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    invoke-interface {p5, p6, p0}, Lcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;->onResult(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/Language;)V

    return-void
.end method

.method private synthetic lambda$setup$1(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;ZLcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/ui/UniversalDisplayName;->userSelectedALanguage(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;Z)Z

    move-result p1

    const-string p3, ""

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->languageSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/domain/Language;

    invoke-interface {p4, p3, p0}, Lcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;->onResult(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/Language;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p4, p3, p0}, Lcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;->onResult(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/Language;)V

    return-void
.end method

.method private userSelectedALanguage(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;Z)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public setup(Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;Ljava/lang/String;Lcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;)V
    .locals 9

    sget-object v0, Lcom/sightcall/universal/model/DisplayMode$Mandatory;->INSTANCE:Lcom/sightcall/universal/model/DisplayMode$Mandatory;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/DisplayMode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->skip:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->skip:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->displayName:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v4, p1, Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;->selectedLanguage:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;

    iget-object v5, p1, Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;->languages:Ljava/util/List;

    iget-boolean v6, p1, Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;->shouldConfirmLanguage:Z

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1090008

    invoke-static {v5}, Lcom/sightcall/livetranslation/domain/LanguagesKt;->names(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->languageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->languageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sightcall/livetranslation/domain/LanguagesKt;->getIndexOf(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-object p1, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->selectLanguage:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->selectLanguage:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/sightcall/universal/ui/UniversalDisplayName;->ok:Landroid/widget/Button;

    new-instance v2, Lc51;

    move-object v3, p0

    move-object v8, p3

    move v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lc51;-><init>(Lcom/sightcall/universal/ui/UniversalDisplayName;Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;ZLcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;)V

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v3, Lcom/sightcall/universal/ui/UniversalDisplayName;->skip:Landroid/widget/Button;

    new-instance v2, Ld51;

    invoke-direct/range {v2 .. v7}, Ld51;-><init>(Lcom/sightcall/universal/ui/UniversalDisplayName;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;ZLcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
