.class public final Lcom/sightcall/sharemedia/ShareMediaDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/sharemedia/ShareMediaDialog$Result;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sightcall/sharemedia/ShareMediaDialog;",
        "",
        "<init>",
        "()V",
        "show",
        "",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Lkotlin/Function1;",
        "Lcom/sightcall/sharemedia/ShareMediaDialog$Result;",
        "Result",
        "sharemedia_release"
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
.field public static final INSTANCE:Lcom/sightcall/sharemedia/ShareMediaDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/sharemedia/ShareMediaDialog;

    invoke-direct {v0}, Lcom/sightcall/sharemedia/ShareMediaDialog;-><init>()V

    sput-object v0, Lcom/sightcall/sharemedia/ShareMediaDialog;->INSTANCE:Lcom/sightcall/sharemedia/ShareMediaDialog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/sharemedia/ShareMediaDialog;->show$lambda$0(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/sharemedia/ShareMediaDialog;->show$lambda$1(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final show$lambda$0(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/sightcall/sharemedia/ShareMediaDialog$Result$VideoFromGallery;->INSTANCE:Lcom/sightcall/sharemedia/ShareMediaDialog$Result$VideoFromGallery;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Out of items range [0;2] current index: "

    invoke-static {p2, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    throw p0

    :cond_1
    sget-object v0, Lcom/sightcall/sharemedia/ShareMediaDialog$Result$PhotoFromGallery;->INSTANCE:Lcom/sightcall/sharemedia/ShareMediaDialog$Result$PhotoFromGallery;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sightcall/sharemedia/ShareMediaDialog$Result$PhotoFromCamera;->INSTANCE:Lcom/sightcall/sharemedia/ShareMediaDialog$Result$PhotoFromCamera;

    :goto_0
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final show$lambda$1(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 0

    sget-object p1, Lcom/sightcall/sharemedia/ShareMediaDialog$Result$Cancelled;->INSTANCE:Lcom/sightcall/sharemedia/ShareMediaDialog$Result$Cancelled;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final show(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/sightcall/sharemedia/ShareMediaDialog$Result;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstalledApp(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/sightcall/sharemedia/R$string;->sharemedia_dialog_title:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->h(I)V

    sget p1, Lcom/sightcall/sharemedia/R$array;->sharemedia_dialog_items:I

    new-instance v0, Lmc0;

    const/4 v1, 0x3

    invoke-direct {v0, p2, v1}, Lmc0;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->p:[Ljava/lang/CharSequence;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->r:Landroid/content/DialogInterface$OnClickListener;

    new-instance p1, Lcw0;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcw0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->m:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->g()Landroidx/appcompat/app/AlertDialog;

    return-void

    :cond_0
    sget-object p0, Lcom/sightcall/sharemedia/ShareMediaDialog$Result$PhotoFromCamera;->INSTANCE:Lcom/sightcall/sharemedia/ShareMediaDialog$Result$PhotoFromCamera;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
