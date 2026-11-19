.class public Lcom/batch/android/c0/h;
.super Lcom/batch/android/c0/b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/z/c;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/batch/android/c0/b<",
        "Lcom/batch/android/h0/h;",
        ">;",
        "Lcom/batch/android/z/c;",
        "Landroid/view/MenuItem$OnMenuItemClickListener;"
    }
.end annotation


# static fields
.field private static final t:Ljava/lang/String; = "HtmlTemplateFragment"


# instance fields
.field private l:Lcom/batch/android/n0/e;

.field private m:Lcom/batch/android/a0/d;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/Integer;

.field private r:Z

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/batch/android/c0/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/c0/h;->l:Lcom/batch/android/n0/e;

    iput-object v0, p0, Lcom/batch/android/c0/h;->m:Lcom/batch/android/a0/d;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/batch/android/c0/h;->n:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/batch/android/c0/h;->o:Z

    iput-boolean v1, p0, Lcom/batch/android/c0/h;->p:Z

    iput-object v0, p0, Lcom/batch/android/c0/h;->q:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcom/batch/android/c0/h;->r:Z

    invoke-static {}, Lcom/batch/android/o0/d;->a()I

    move-result v0

    iput v0, p0, Lcom/batch/android/c0/h;->s:I

    iput-boolean v1, p0, Lcom/batch/android/c0/b;->c:Z

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h0/h;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1}, Lcom/batch/android/o0/c;->a(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->k()Lcom/batch/android/BatchMessage;

    move-result-object v3

    invoke-direct {v2, p1, v3, p0}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;-><init>(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/z/c;)V

    new-instance v3, Lcom/batch/android/n0/e;

    invoke-direct {p0}, Lcom/batch/android/c0/h;->p()Lcom/batch/android/a0/d;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lcom/batch/android/n0/e;-><init>(Landroid/content/Context;Lcom/batch/android/h0/h;Lcom/batch/android/a0/d;Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;)V

    invoke-virtual {v3, p0}, Lcom/batch/android/n0/e;->setActionListener(Lcom/batch/android/z/c;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/batch/android/c0/h;->p()Lcom/batch/android/a0/d;

    move-result-object v1

    new-instance v2, Lcom/batch/android/a0/b;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "root"

    invoke-direct {v2, v5, v4}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/batch/android/o0/d;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/batch/android/a0/d;->a(Lcom/batch/android/a0/b;Landroid/graphics/Point;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/batch/android/o0/b;->a(Landroid/view/View;Ljava/util/Map;)V

    iput-object v3, p0, Lcom/batch/android/c0/h;->l:Lcom/batch/android/n0/e;

    return-object v0
.end method

.method public static a(Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/h;)Lcom/batch/android/c0/h;
    .locals 1

    .line 78
    new-instance v0, Lcom/batch/android/c0/h;

    invoke-direct {v0}, Lcom/batch/android/c0/h;-><init>()V

    .line 79
    invoke-virtual {v0, p0, p1}, Lcom/batch/android/c0/b;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/c;)V

    return-object v0
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 80
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic a(Lcom/batch/android/f0/d;Landroid/content/DialogInterface;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/batch/android/c0/h;->c(Lcom/batch/android/f0/d;)V

    return-void
.end method

.method private b(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/batch/android/c0/h$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

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

    const-string v3, "."

    invoke-static {v0, p3, v3}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_3
    const-string p3, "Request timed out."

    goto :goto_0

    :cond_4
    const-string p3, "SSL Error. Is your certificate valid?"

    :goto_0
    const-string v0, "WebView was closed because of an error"

    const-string v3, "Messaging"

    invoke-static {v3, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "WebView error: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object p1

    check-cast p1, Lcom/batch/android/h0/h;

    iget-boolean p1, p1, Lcom/batch/android/h0/h;->l:Z

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_6

    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_6
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-static {p1}, Lcom/batch/android/o0/c;->b(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v3, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "WebView Error"

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "The WebView encountered an error and will be closed.\nThis error will only be shown during development.\n\nCause: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, v0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, p3, Landroidx/appcompat/app/AlertController$AlertParams;->g:Ljava/lang/CharSequence;

    new-instance p1, Lip0;

    invoke-direct {p1, v1}, Lip0;-><init>(I)V

    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lb81;

    invoke-direct {p1, p0, p2, v2}, Lb81;-><init>(Lcom/batch/android/c0/b;Lcom/batch/android/f0/d;I)V

    iput-object p1, p3, Landroidx/appcompat/app/AlertController$AlertParams;->n:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->g()Landroidx/appcompat/app/AlertDialog;

    return v2
.end method

.method private c(Lcom/batch/android/f0/d;)V
    .locals 1

    iget-boolean v0, p0, Lcom/batch/android/c0/h;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/c0/h;->h()V

    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    invoke-virtual {p0, p1}, Lcom/batch/android/i;->a(Lcom/batch/android/f0/d;)V

    :cond_0
    return-void
.end method

.method private p()Lcom/batch/android/a0/d;
    .locals 3

    iget-object v0, p0, Lcom/batch/android/c0/h;->m:Lcom/batch/android/a0/d;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/batch/android/a0/g;

    new-instance v1, Lcom/batch/android/b0/a;

    invoke-direct {v1}, Lcom/batch/android/b0/a;-><init>()V

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v2

    check-cast v2, Lcom/batch/android/h0/h;

    iget-object v2, v2, Lcom/batch/android/h0/h;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/batch/android/a0/g;-><init>(Lcom/batch/android/a0/e;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/batch/android/a0/g;->b()Lcom/batch/android/a0/d;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/c0/h;->m:Lcom/batch/android/a0/d;
    :try_end_0
    .catch Lcom/batch/android/a0/a; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "An error occurred while parsing message style"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Unparsable style"

    invoke-static {v0, p0}, Lr81;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/batch/android/c0/h;->m:Lcom/batch/android/a0/d;

    return-object p0
.end method

.method private q()V
    .locals 7

    invoke-direct {p0}, Lcom/batch/android/c0/h;->p()Lcom/batch/android/a0/d;

    move-result-object v0

    new-instance v1, Lcom/batch/android/a0/b;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "root"

    invoke-direct {v1, v4, v3}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/batch/android/a0/d;->a(Lcom/batch/android/a0/b;Landroid/graphics/Point;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "statusbar"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "light"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "dark"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_1

    :sswitch_2
    const-string v4, "hidden"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Lcom/batch/android/c0/h;->n:Z

    iput-boolean v6, p0, Lcom/batch/android/c0/h;->o:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v6, p0, Lcom/batch/android/c0/h;->n:Z

    iput-boolean v6, p0, Lcom/batch/android/c0/h;->o:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Lcom/batch/android/c0/h;->o:Z

    goto :goto_0

    :cond_4
    const-string v5, "statusbar-bg"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "translucent"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput-object v3, p0, Lcom/batch/android/c0/h;->q:Ljava/lang/Integer;

    iput-boolean v6, p0, Lcom/batch/android/c0/h;->p:Z

    goto :goto_0

    :cond_5
    invoke-static {v1}, Lcom/batch/android/o0/b;->c(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/batch/android/c0/h;->q:Ljava/lang/Integer;

    iput-boolean v2, p0, Lcom/batch/android/c0/h;->p:Z

    goto/16 :goto_0

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48916256 -> :sswitch_2
        0x2eef76 -> :sswitch_1
        0x6233516 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic q(Lcom/batch/android/c0/h;Lcom/batch/android/f0/d;Landroid/content/DialogInterface;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/batch/android/c0/h;->a(Lcom/batch/android/f0/d;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic r(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/c0/h;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/batch/android/c0/h;->r:Z

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/batch/android/c0/h;->h()V

    .line 84
    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    invoke-virtual {p0}, Lcom/batch/android/i;->b()V

    :cond_0
    return-void
.end method

.method public a(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/batch/android/c0/h;->b(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 87
    invoke-direct {p0, p2}, Lcom/batch/android/c0/h;->c(Lcom/batch/android/f0/d;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 85
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    const-string v1, "batch.dismiss"

    invoke-virtual {p0, v1, v0, p1}, Lcom/batch/android/c0/h;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/batch/android/c0/h;->r:Z

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/batch/android/c0/h;->h()V

    .line 98
    new-instance v0, Lcom/batch/android/f0/a;

    invoke-direct {v0, p1, p2}, Lcom/batch/android/f0/a;-><init>(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    .line 99
    iget-object p1, p0, Lcom/batch/android/c0/b;->f:Lcom/batch/android/v0/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->k()Lcom/batch/android/BatchMessage;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v0}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/a;)V

    .line 100
    iget-object p0, p0, Lcom/batch/android/c0/b;->g:Lcom/batch/android/i;

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0, v0, p3}, Lcom/batch/android/i;->a(Lcom/batch/android/f0/a;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 2

    .line 88
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p1}, Lcom/batch/android/z/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h0/h;

    iget-boolean v0, v0, Lcom/batch/android/h0/h;->k:Z

    if-eqz p2, :cond_1

    .line 91
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 92
    :cond_1
    new-instance p2, Lcom/batch/android/json/JSONObject;

    invoke-direct {p2}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 93
    :try_start_0
    const-string v1, "l"

    invoke-virtual {p2, v1, p1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 94
    const-string p1, "li"

    invoke-virtual {p2, p1, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/batch/android/json/JSONObject;

    .line 95
    const-string p1, "batch.deeplink"

    invoke-virtual {p0, p1, p2, p3}, Lcom/batch/android/c0/h;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dismiss()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/c0/h;->r:Z

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/c0/h;->r:Z

    return-void
.end method

.method public g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public h()V
    .locals 1

    invoke-super {p0}, Lcom/batch/android/c0/b;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/c0/h;->r:Z

    return-void
.end method

.method public i()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/batch/android/c0/b;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/batch/android/c0/h;->q()V

    sget p1, Lcom/batch/android/R$style;->com_batchsdk_WebViewDialogTheme:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object p3

    check-cast p3, Lcom/batch/android/h0/h;

    iget-boolean p3, p3, Lcom/batch/android/h0/h;->l:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/batch/android/c0/h;->l:Lcom/batch/android/n0/e;

    invoke-virtual {p3}, Lcom/batch/android/n0/e;->getCloseButton()Landroid/view/View;

    move-result-object p3

    if-ne p2, p3, :cond_0

    const-string p2, "Development menu"

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget p2, p0, Lcom/batch/android/c0/h;->s:I

    const-string p3, "Reload"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, v0, p3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcom/batch/android/c0/h;->o:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/batch/android/c0/h;->p:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    iget-object v1, p0, Lcom/batch/android/c0/h;->q:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/batch/android/c0/h;->q:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_1
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p2}, Lcom/batch/android/c0/h;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/batch/android/c0/h;->l:Lcom/batch/android/n0/e;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p3}, Lcom/batch/android/n0/e;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/batch/android/n0/e;->i()V

    :goto_0
    invoke-virtual {p0}, Lcom/batch/android/c0/b;->j()Lcom/batch/android/f0/c;

    move-result-object p2

    check-cast p2, Lcom/batch/android/h0/h;

    iget-boolean p2, p2, Lcom/batch/android/h0/h;->l:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/batch/android/c0/h;->l:Lcom/batch/android/n0/e;

    invoke-virtual {p2}, Lcom/batch/android/n0/e;->getCloseButton()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    :cond_2
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->u(Landroid/view/MenuItem;)V

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget v0, p0, Lcom/batch/android/c0/h;->s:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/c0/h;->l:Lcom/batch/android/n0/e;

    invoke-virtual {p0}, Lcom/batch/android/n0/e;->i()V

    const/4 p0, 0x1

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->v()V

    return p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->v()V

    throw p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/batch/android/c0/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/batch/android/c0/h;->l:Lcom/batch/android/n0/e;

    invoke-virtual {p0, p1}, Lcom/batch/android/n0/e;->b(Landroid/os/Bundle;)V

    return-void
.end method
