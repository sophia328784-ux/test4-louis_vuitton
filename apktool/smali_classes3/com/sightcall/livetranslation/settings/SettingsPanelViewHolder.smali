.class public final Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;
.super Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder<",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u0016\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0003`\u0019X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR$\u0010\u001c\u001a\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0\u001e0\u001dj\u0002` X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "interactor",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;",
        "<init>",
        "(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V",
        "close",
        "Landroid/view/View;",
        "language",
        "Landroid/widget/TextView;",
        "switch",
        "Landroidx/appcompat/widget/SwitchCompat;",
        "openHistory",
        "smallSize",
        "mediumSize",
        "largeSize",
        "skipCheckedChanges",
        "",
        "render",
        "Lkotlin/Function1;",
        "",
        "Lcom/sightcall/libraries/archi/nucleus/Renderer;",
        "getRender",
        "()Lkotlin/jvm/functions/Function1;",
        "dispatcher",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/sightcall/libraries/archi/nucleus/Action;",
        "Lcom/sightcall/libraries/archi/nucleus/Dispatcher;",
        "getDispatcher",
        "()Ljava/util/List;",
        "livetranslation_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final close:Landroid/view/View;

.field private final dispatcher:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;>;"
        }
    .end annotation
.end field

.field private final language:Landroid/widget/TextView;

.field private final largeSize:Landroid/view/View;

.field private final mediumSize:Landroid/view/View;

.field private final openHistory:Landroid/view/View;

.field private final render:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private skipCheckedChanges:Z

.field private final smallSize:Landroid/view/View;

.field private final switch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/sightcall/livetranslation/R$layout;->settings_panel:I

    invoke-direct {p0, p1, v0, p2}, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;-><init>(Landroid/view/ViewGroup;ILcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V

    sget p1, Lcom/sightcall/livetranslation/R$id;->close:I

    invoke-virtual {p0, p1}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->close:Landroid/view/View;

    sget p2, Lcom/sightcall/livetranslation/R$id;->live_translation_language_value:I

    invoke-virtual {p0, p2}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->language:Landroid/widget/TextView;

    sget p2, Lcom/sightcall/livetranslation/R$id;->enable_translation:I

    invoke-virtual {p0, p2}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p2, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    sget v0, Lcom/sightcall/livetranslation/R$id;->open_history:I

    invoke-virtual {p0, v0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->openHistory:Landroid/view/View;

    sget v1, Lcom/sightcall/livetranslation/R$id;->live_translation_size_small:I

    invoke-virtual {p0, v1}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->smallSize:Landroid/view/View;

    sget v2, Lcom/sightcall/livetranslation/R$id;->live_translation_size_medium:I

    invoke-virtual {p0, v2}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->mediumSize:Landroid/view/View;

    sget v3, Lcom/sightcall/livetranslation/R$id;->live_translation_size_large:I

    invoke-virtual {p0, v3}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->largeSize:Landroid/view/View;

    new-instance v4, Lxo0;

    const/16 v5, 0x13

    invoke-direct {v4, p0, v5}, Lxo0;-><init>(Ljava/lang/Object;I)V

    iput-object v4, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->render:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lcom/jakewharton/rxbinding4/view/RxView;->a(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v4, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$1;->INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$1;

    invoke-virtual {p1, v4}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/jakewharton/rxbinding4/view/RxView;->a(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$2;->INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$2;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/jakewharton/rxbinding4/widget/RxCompoundButton;->a(Landroidx/appcompat/widget/SwitchCompat;)Lcom/jakewharton/rxbinding4/InitialValueObservable;

    move-result-object p1

    const-wide/16 v7, 0x1

    invoke-virtual {p1, v7, v8}, Lio/reactivex/rxjava3/core/Observable;->skip(J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$3;

    invoke-direct {p2, p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$3;-><init>(Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object p2, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$4;->INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$4;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/jakewharton/rxbinding4/view/RxView;->a(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object p2, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$5;->INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$5;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/jakewharton/rxbinding4/view/RxView;->a(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object p2, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$6;->INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$6;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/jakewharton/rxbinding4/view/RxView;->a(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object p2, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$7;->INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$dispatcher$7;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array/range {v5 .. v10}, [Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolderKt;->dispatch([Lio/reactivex/rxjava3/core/Observable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->dispatcher:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getSkipCheckedChanges$p(Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->skipCheckedChanges:Z

    return p0
.end method

.method public static synthetic b(Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->render$lambda$0(Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final render$lambda$0(Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;)Lkotlin/Unit;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->language:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;->getSelectedLanguage()Lcom/sightcall/livetranslation/domain/Language;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sightcall/livetranslation/domain/Language;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->switch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;->getShow()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    iput-boolean v4, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->skipCheckedChanges:Z

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;->getShow()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->jumpDrawablesToCurrentState()V

    iput-boolean v3, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->skipCheckedChanges:Z

    :cond_1
    iget-object v0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->openHistory:Landroid/view/View;

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;->getTranscriptHistory()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;

    move-result-object v1

    sget-object v2, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v4, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->smallSize:Landroid/view/View;

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;->getFontSize()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    move-result-object v1

    sget-object v2, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;->Small:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    if-ne v1, v2, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->mediumSize:Landroid/view/View;

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;->getFontSize()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    move-result-object v1

    sget-object v2, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;->Medium:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    if-ne v1, v2, :cond_5

    move v1, v4

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->largeSize:Landroid/view/View;

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;->getFontSize()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    move-result-object p1

    sget-object v0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;->Large:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    if-ne p1, v0, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p0, v3}, Landroid/view/View;->setSelected(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public getDispatcher()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->dispatcher:Ljava/util/List;

    return-object p0
.end method

.method public getRender()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;->render:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method
