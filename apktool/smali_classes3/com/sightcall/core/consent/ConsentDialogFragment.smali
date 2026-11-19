.class public final Lcom/sightcall/core/consent/ConsentDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/core/consent/ConsentDialogFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 $2\u00020\u0001:\u0001$BE\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001f\u001a\u00020\t2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010 \u001a\u00020\tH\u0002J\u0010\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020#H\u0002R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006%"
    }
    d2 = {
        "Lcom/sightcall/core/consent/ConsentDialogFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "title",
        "",
        "content",
        "privacyLinkDisplay",
        "declineContent",
        "onConsentClick",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V",
        "Ljava/lang/Integer;",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "viewModel",
        "Lcom/sightcall/core/consent/ConsentViewModel;",
        "getViewModel",
        "()Lcom/sightcall/core/consent/ConsentViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onCreate",
        "consentToPolicies",
        "updateConsentState",
        "newConsentState",
        "Lcom/sightcall/core/consent/ConsentEnum;",
        "Companion",
        "core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sightcall/core/consent/ConsentDialogFragment$Companion;

.field public static final ConsentKey:Ljava/lang/String; = "CONSENT_KEY"

.field public static final ConsentStoragePreferences:Ljava/lang/String; = "CONSENT_STORAGE_PREFERENCES"

.field public static final ShouldShowConsentKey:Ljava/lang/String; = "SHOULD_SHOW_CONSENT_KEY"

.field public static final TAG:Ljava/lang/String; = "ConsentDialogFragment"


# instance fields
.field private final content:Ljava/lang/Integer;

.field private final declineContent:Ljava/lang/Integer;

.field private final onConsentClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final privacyLinkDisplay:Ljava/lang/Integer;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private final title:Ljava/lang/Integer;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/core/consent/ConsentDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/core/consent/ConsentDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/core/consent/ConsentDialogFragment;->Companion:Lcom/sightcall/core/consent/ConsentDialogFragment$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sightcall/core/consent/ConsentDialogFragment;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/sightcall/core/consent/ConsentDialogFragment;->title:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/sightcall/core/consent/ConsentDialogFragment;->content:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/sightcall/core/consent/ConsentDialogFragment;->privacyLinkDisplay:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/sightcall/core/consent/ConsentDialogFragment;->declineContent:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/sightcall/core/consent/ConsentDialogFragment;->onConsentClick:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/sightcall/core/consent/ConsentDialogFragment$special$$inlined$viewModels$default$1;

    invoke-direct {p1, p0}, Lcom/sightcall/core/consent/ConsentDialogFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p3, Lcom/sightcall/core/consent/ConsentDialogFragment$special$$inlined$viewModels$default$2;

    invoke-direct {p3, p1}, Lcom/sightcall/core/consent/ConsentDialogFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    const-class p2, Lcom/sightcall/core/consent/ConsentViewModel;

    sget-object p3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {p3, p2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    new-instance p3, Lcom/sightcall/core/consent/ConsentDialogFragment$special$$inlined$viewModels$default$3;

    invoke-direct {p3, p1}, Lcom/sightcall/core/consent/ConsentDialogFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance p4, Lcom/sightcall/core/consent/ConsentDialogFragment$special$$inlined$viewModels$default$4;

    const/4 p5, 0x0

    invoke-direct {p4, p5, p1}, Lcom/sightcall/core/consent/ConsentDialogFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance p5, Lcom/sightcall/core/consent/ConsentDialogFragment$special$$inlined$viewModels$default$5;

    invoke-direct {p5, p0, p1}, Lcom/sightcall/core/consent/ConsentDialogFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance p1, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {p1, p2, p3, p5, p4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/sightcall/core/consent/ConsentDialogFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    move-object p4, v0

    .line 64
    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/sightcall/core/consent/ConsentDialogFragment;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic J(Lcom/sightcall/core/consent/ConsentDialogFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/core/consent/ConsentDialogFragment;->onCreateView$lambda$5$0$1$0(Lcom/sightcall/core/consent/ConsentDialogFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final consentToPolicies()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/core/consent/ConsentDialogFragment;->onConsentClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private final getViewModel()Lcom/sightcall/core/consent/ConsentViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/core/consent/ConsentDialogFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/core/consent/ConsentViewModel;

    return-object p0
.end method

.method private static final onCreateView$lambda$5$0(Lcom/sightcall/core/consent/ConsentDialogFragment;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 11

    and-int/lit8 p3, p3, 0x3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->i()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->D()V

    goto/16 :goto_3

    :cond_1
    :goto_0
    sget-object p3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p3, p0, Lcom/sightcall/core/consent/ConsentDialogFragment;->title:Ljava/lang/Integer;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_1

    :cond_2
    sget p3, Lcom/sightcall/core/R$string;->consent_title_privacy_policy:I

    :goto_1
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p3, Lcom/sightcall/core/R$string;->consent_declined_title:I

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lcom/sightcall/core/consent/ConsentDialogFragment;->declineContent:Ljava/lang/Integer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_2

    :cond_3
    sget p3, Lcom/sightcall/core/R$string;->consent_declined_body:I

    :goto_2
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p3, :cond_4

    if-ne v4, v5, :cond_5

    :cond_4
    new-instance v4, Lmp;

    const/4 p3, 0x0

    invoke-direct {v4, p0, p3}, Lmp;-><init>(Lcom/sightcall/core/consent/ConsentDialogFragment;I)V

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez p3, :cond_6

    if-ne v6, v5, :cond_7

    :cond_6
    new-instance v6, Lmp;

    const/4 p3, 0x1

    invoke-direct {v6, p0, p3}, Lmp;-><init>(Lcom/sightcall/core/consent/ConsentDialogFragment;I)V

    invoke-interface {p2, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez p3, :cond_8

    if-ne v7, v5, :cond_9

    :cond_8
    new-instance v7, Lmp;

    invoke-direct {v7, p0, v0}, Lmp;-><init>(Lcom/sightcall/core/consent/ConsentDialogFragment;I)V

    invoke-interface {p2, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Lcom/sightcall/core/consent/ConsentDialogFragment;->getViewModel()Lcom/sightcall/core/consent/ConsentViewModel;

    move-result-object v8

    const/4 v10, 0x0

    move-object v9, p2

    move-object v5, v4

    move-object v4, p1

    invoke-static/range {v1 .. v10}, Lcom/sightcall/core/consent/compose/ConsentLayoutKt;->ConsentParentScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/sightcall/core/consent/ConsentViewModel;Landroidx/compose/runtime/Composer;I)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onCreateView$lambda$5$0$0$0(Lcom/sightcall/core/consent/ConsentDialogFragment;)Lkotlin/Unit;
    .locals 3

    iget-object v0, p0, Lcom/sightcall/core/consent/ConsentDialogFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CONSENT_KEY"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/sightcall/core/consent/ConsentDialogFragment;->consentToPolicies()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    const-string p0, "sharedPreferences"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final onCreateView$lambda$5$0$1$0(Lcom/sightcall/core/consent/ConsentDialogFragment;)Lkotlin/Unit;
    .locals 1

    sget-object v0, Lcom/sightcall/core/consent/ConsentEnum;->SHOW_DECLINE_VIEW:Lcom/sightcall/core/consent/ConsentEnum;

    invoke-direct {p0, v0}, Lcom/sightcall/core/consent/ConsentDialogFragment;->updateConsentState(Lcom/sightcall/core/consent/ConsentEnum;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onCreateView$lambda$5$0$2$0(Lcom/sightcall/core/consent/ConsentDialogFragment;)Lkotlin/Unit;
    .locals 1

    sget-object v0, Lcom/sightcall/core/consent/ConsentEnum;->SHOW_CONSENT_VIEW:Lcom/sightcall/core/consent/ConsentEnum;

    invoke-direct {p0, v0}, Lcom/sightcall/core/consent/ConsentDialogFragment;->updateConsentState(Lcom/sightcall/core/consent/ConsentEnum;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic q(Lcom/sightcall/core/consent/ConsentDialogFragment;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sightcall/core/consent/ConsentDialogFragment;->onCreateView$lambda$5$0(Lcom/sightcall/core/consent/ConsentDialogFragment;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/sightcall/core/consent/ConsentDialogFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/core/consent/ConsentDialogFragment;->onCreateView$lambda$5$0$0$0(Lcom/sightcall/core/consent/ConsentDialogFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/sightcall/core/consent/ConsentDialogFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/core/consent/ConsentDialogFragment;->onCreateView$lambda$5$0$2$0(Lcom/sightcall/core/consent/ConsentDialogFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final updateConsentState(Lcom/sightcall/core/consent/ConsentEnum;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/core/consent/ConsentDialogFragment;->getViewModel()Lcom/sightcall/core/consent/ConsentViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sightcall/core/consent/ConsentViewModel;->setConsentVisibility(Lcom/sightcall/core/consent/ConsentEnum;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/sightcall/graphik/R$style;->Theme_SightCall:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 32

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "CONSENT_STORAGE_PREFERENCES"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lcom/sightcall/core/consent/ConsentDialogFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "CONSENT_KEY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/sightcall/core/consent/ConsentDialogFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    const-string v5, "SHOULD_SHOW_CONSENT_KEY"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_0
    const-string v0, "sharedPreferences"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4

    :cond_1
    :goto_0
    invoke-direct {v0}, Lcom/sightcall/core/consent/ConsentDialogFragment;->consentToPolicies()V

    :cond_2
    iget-object v1, v0, Lcom/sightcall/core/consent/ConsentDialogFragment;->content:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_3
    sget v1, Lcom/sightcall/core/R$string;->consent_privacy_policy:I

    :goto_1
    iget-object v5, v0, Lcom/sightcall/core/consent/ConsentDialogFragment;->privacyLinkDisplay:Ljava/lang/Integer;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_4
    sget v5, Lcom/sightcall/core/R$string;->consent_privacy_policy_url_display:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    sget v6, Lcom/sightcall/core/R$string;->consent_privacy_policy_url:I

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v7, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x6

    invoke-static {v1, v5, v3, v3, v7}, Lkotlin/text/StringsKt;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v7

    new-instance v8, Landroidx/compose/ui/text/AnnotatedString$Builder;

    invoke-direct {v8, v3, v2, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->e(Ljava/lang/String;)V

    new-instance v9, Landroidx/compose/ui/text/SpanStyle;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v10, Landroidx/compose/ui/graphics/Color;->g:J

    sget-object v1, Landroidx/compose/ui/text/style/TextDecoration;->b:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v26, Landroidx/compose/ui/text/style/TextDecoration;->d:Landroidx/compose/ui/text/style/TextDecoration;

    const v30, 0xeffe

    const/16 v31, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v9 .. v31}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8, v9, v7, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->c(Landroidx/compose/ui/text/SpanStyle;II)V

    const-string v1, "URL"

    invoke-virtual {v8, v7, v5, v1, v6}, Landroidx/compose/ui/text/AnnotatedString$Builder;->b(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroidx/compose/ui/text/AnnotatedString$Builder;->i()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    new-instance v3, Landroidx/compose/ui/platform/ComposeView;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lf0;

    const/16 v5, 0x1b

    invoke-direct {v4, v0, v1, v5}, Lf0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x65427f81

    invoke-direct {v0, v1, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v3, v0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    return-object v3
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackOnHiddenChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V

    return-void
.end method
