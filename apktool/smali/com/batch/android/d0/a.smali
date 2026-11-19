.class public final Lcom/batch/android/d0/a;
.super Lcom/batch/android/c0/b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/m0/a$a;
.implements Lcom/batch/android/z/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/d0/a$a;,
        Lcom/batch/android/d0/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/batch/android/c0/b<",
        "Lcom/batch/android/g0/a;",
        ">;",
        "Lcom/batch/android/m0/a$a;",
        "Lcom/batch/android/z/c;"
    }
.end annotation


# static fields
.field public static final p:Lcom/batch/android/d0/a$a;


# instance fields
.field private l:Z

.field private m:Lcom/batch/android/m0/a;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/batch/android/z/a$d<",
            "*>;>;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/batch/android/z/a$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/batch/android/d0/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/batch/android/d0/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/batch/android/d0/a;->p:Lcom/batch/android/d0/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/batch/android/c0/b;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/batch/android/d0/a;->n:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/batch/android/d0/a;->o:Ljava/util/Map;

    return-void
.end method

.method private final a(Landroid/content/Context;)Landroid/view/View;
    .locals 7

    .line 73
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1}, Lcom/batch/android/o0/c;->a(Landroid/content/Context;)I

    move-result v0

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 74
    new-instance v0, Lcom/batch/android/m0/a;

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    check-cast v2, Lcom/batch/android/g0/a;

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->k()Lcom/batch/android/BatchMessage;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/batch/android/d0/a;->n:Ljava/util/Map;

    move-object v6, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/batch/android/m0/a;-><init>(Landroid/content/Context;Lcom/batch/android/g0/a;Lcom/batch/android/BatchMessage;Ljava/util/Map;Lcom/batch/android/m0/a$a;Lcom/batch/android/z/c;)V

    .line 75
    iput-object v0, v5, Lcom/batch/android/d0/a;->m:Lcom/batch/android/m0/a;

    .line 76
    invoke-virtual {v5}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    invoke-virtual {v0, p0}, Lcom/batch/android/m0/a;->a(Landroid/view/Window;)V

    .line 77
    invoke-direct {v5}, Lcom/batch/android/d0/a;->p()V

    .line 78
    iget-object p0, v5, Lcom/batch/android/d0/a;->m:Lcom/batch/android/m0/a;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "rootView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p1
.end method

.method private static final a(Landroidx/core/view/WindowInsetsControllerCompat;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->g(I)V

    .line 72
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->o(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/batch/android/BatchMessage;Lcom/batch/android/g0/a;)Lcom/batch/android/d0/a;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 86
    sget-object v0, Lcom/batch/android/d0/a;->p:Lcom/batch/android/d0/a$a;

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/d0/a$a;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/g0/a;)Lcom/batch/android/d0/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/batch/android/d0/a;)Ljava/util/Map;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/batch/android/d0/a;->n:Ljava/util/Map;

    return-object p0
.end method

.method private static final a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 99
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/batch/android/d0/a;Lcom/batch/android/BatchMessage;Lcom/batch/android/g0/a;)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/c0/b;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/c;)V

    return-void
.end method

.method private static final a(Lcom/batch/android/d0/a;Lcom/batch/android/f0/d;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    invoke-direct {p0, p1}, Lcom/batch/android/d0/a;->c(Lcom/batch/android/f0/d;)V

    return-void
.end method

.method public static final synthetic b(Lcom/batch/android/d0/a;)Lcom/batch/android/g0/a;
    .locals 0

    .line 182
    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object p0

    check-cast p0, Lcom/batch/android/g0/a;

    return-object p0
.end method

.method private final b(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/batch/android/d0/a$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "Unknown error:\n"

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, "Unknown error."

    goto :goto_0

    :cond_2
    const-string v0, "HTTP Error Code "

    const/16 v2, 0x2e

    invoke-static {v2, v0, p3}, Ld21;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_3
    const-string p3, "Request timed out."

    goto :goto_0

    :cond_4
    const-string p3, "SSL Error. Is your certificate valid?"

    :goto_0
    const-string v0, "WebView was closed because of an error"

    const-string v2, "Messaging"

    invoke-static {v2, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "WebView error: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object p1

    check-cast p1, Lcom/batch/android/g0/a;

    invoke-virtual {p1}, Lcom/batch/android/g0/a;->l()Lcom/batch/android/g0/c$k;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/batch/android/g0/c$k;->o()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_7

    :goto_1
    return v0

    :cond_7
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/batch/android/o0/c;->b(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "WebView Error"

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The WebView encountered an error and will be closed.\nThis error will only be shown during development.\n\nCause: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p1, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->g:Ljava/lang/CharSequence;

    new-instance p3, Lip0;

    invoke-direct {p3, v1}, Lip0;-><init>(I)V

    const v3, 0x104000a

    invoke-virtual {p1, v3, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p3, Lb81;

    invoke-direct {p3, p0, p2, v0}, Lb81;-><init>(Lcom/batch/android/c0/b;Lcom/batch/android/f0/d;I)V

    iput-object p3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->n:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->g()Landroidx/appcompat/app/AlertDialog;

    return v1
.end method

.method public static final synthetic c(Lcom/batch/android/d0/a;)Lcom/batch/android/m0/a;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/batch/android/d0/a;->m:Lcom/batch/android/m0/a;

    return-object p0
.end method

.method private final c(Lcom/batch/android/f0/d;)V
    .locals 1

    iget-boolean v0, p0, Lcom/batch/android/d0/a;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/d0/a;->h()V

    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    invoke-virtual {p0, p1}, Lcom/batch/android/i;->a(Lcom/batch/android/f0/d;)V

    :cond_0
    return-void
.end method

.method private final p()V
    .locals 6

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v0

    check-cast v0, Lcom/batch/android/g0/a;

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/g0/c$g;

    iget-object v2, p0, Lcom/batch/android/d0/a;->n:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/batch/android/d0/a$c;

    invoke-direct {v2, p0, v1}, Lcom/batch/android/d0/a$c;-><init>(Lcom/batch/android/d0/a;Lcom/batch/android/g0/c$g;)V

    iget-object v3, p0, Lcom/batch/android/d0/a;->o:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/batch/android/z/a;

    invoke-direct {v3, v2}, Lcom/batch/android/z/a;-><init>(Lcom/batch/android/z/a$c;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v5

    check-cast v5, Lcom/batch/android/g0/a;

    invoke-virtual {v5}, Lcom/batch/android/g0/a;->k()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v1}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic q(Landroidx/core/view/WindowInsetsControllerCompat;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/batch/android/d0/a;->a(Landroidx/core/view/WindowInsetsControllerCompat;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/batch/android/d0/a;Lcom/batch/android/f0/d;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/batch/android/d0/a;->a(Lcom/batch/android/d0/a;Lcom/batch/android/f0/d;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic s(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/d0/a;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/batch/android/d0/a;->l:Z

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/batch/android/d0/a;->h()V

    .line 81
    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/batch/android/i;->b()V

    :cond_0
    return-void
.end method

.method public a(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/batch/android/d0/a;->b(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 85
    invoke-direct {p0, p2}, Lcom/batch/android/d0/a;->c(Lcom/batch/android/f0/d;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/batch/android/f0/d;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    invoke-direct {p0, p1}, Lcom/batch/android/d0/a;->c(Lcom/batch/android/f0/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 83
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    const-string v1, "batch.dismiss"

    invoke-virtual {p0, v1, v0, p1}, Lcom/batch/android/d0/a;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    iget-boolean v0, p0, Lcom/batch/android/d0/a;->l:Z

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/batch/android/d0/a;->h()V

    .line 89
    new-instance v0, Lcom/batch/android/f0/a;

    invoke-direct {v0, p1, p2}, Lcom/batch/android/f0/a;-><init>(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    .line 90
    iget-object p1, p0, Lcom/batch/android/c0/b;->f:Lcom/batch/android/v0/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->k()Lcom/batch/android/BatchMessage;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v0}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/a;)V

    .line 91
    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0, v0, p3}, Lcom/batch/android/i;->a(Lcom/batch/android/f0/a;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/batch/android/z/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v0

    check-cast v0, Lcom/batch/android/g0/a;

    invoke-virtual {v0}, Lcom/batch/android/g0/a;->l()Lcom/batch/android/g0/c$k;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/batch/android/g0/c$k;->q()Z

    move-result v0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_1
    new-instance p2, Lcom/batch/android/json/JSONObject;

    invoke-direct {p2}, Lcom/batch/android/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "l"

    invoke-virtual {p2, v1, p1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    const-string p1, "li"

    invoke-virtual {p2, p1, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/batch/android/json/JSONObject;

    const-string p1, "batch.deeplink"

    invoke-virtual {p0, p1, p2, p3}, Lcom/batch/android/d0/a;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_3

    const-string p0, "Messaging"

    const-string p1, "Cannot perform deeplink: WebView component not found"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/f0/b;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    iget-boolean v0, p0, Lcom/batch/android/d0/a;->l:Z

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/batch/android/d0/a;->h()V

    .line 95
    iget-object v0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1, p2, p3}, Lcom/batch/android/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/f0/b;)V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/batch/android/c0/b;->f:Lcom/batch/android/v0/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->k()Lcom/batch/android/BatchMessage;

    move-result-object p0

    invoke-virtual {p1, p2, p0, p3}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/a;)V

    :cond_1
    return-void
.end method

.method public g()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/d0/a;->m:Lcom/batch/android/m0/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/m0/a;->c()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "rootView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public h()V
    .locals 1

    invoke-super {p0}, Lcom/batch/android/c0/b;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/d0/a;->l:Z

    return-void
.end method

.method public i()I
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object p0

    check-cast p0, Lcom/batch/android/g0/a;

    invoke-virtual {p0}, Lcom/batch/android/g0/a;->e()Lcom/batch/android/g0/b;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/g0/b;->c()Lcom/batch/android/g0/b$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/g0/b$a;->d()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public l()V
    .locals 0

    iget-object p0, p0, Lcom/batch/android/d0/a;->m:Lcom/batch/android/m0/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/m0/a;->d()V

    return-void

    :cond_0
    const-string p0, "rootView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public m()V
    .locals 1

    iget-boolean v0, p0, Lcom/batch/android/d0/a;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/d0/a;->h()V

    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/i;->a()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/batch/android/c0/b;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object p1

    check-cast p1, Lcom/batch/android/g0/a;

    invoke-virtual {p1}, Lcom/batch/android/g0/a;->q()Z

    move-result p1

    const/4 v0, 0x2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object p1

    check-cast p1, Lcom/batch/android/g0/a;

    invoke-virtual {p1}, Lcom/batch/android/g0/a;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/batch/android/R$style;->com_batchsdk_CEPDialogTheme:I

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    goto :goto_1

    :cond_1
    :goto_0
    sget p1, Lcom/batch/android/R$style;->com_batchsdk_CEPDialogTheme_Fullscreen:I

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    :goto_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v2, v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v3, 0x10

    if-ne p0, v3, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    move p0, v1

    :goto_2
    invoke-virtual {v2, p0}, Landroidx/core/view/WindowInsetsControllerCompat;->e(Z)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    new-instance v0, Lv71;

    invoke-direct {v0, v2, v1}, Lv71;-><init>(Landroidx/core/view/WindowInsetsControllerCompat;I)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->x(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_3
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/batch/android/d0/a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
