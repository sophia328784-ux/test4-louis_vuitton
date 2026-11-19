.class public Lcom/batch/android/h0/e;
.super Lcom/batch/android/f0/c;
.source "SourceFile"


# instance fields
.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/batch/android/f0/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private e()Landroid/text/Spanned;
    .locals 2

    iget-object p0, p0, Lcom/batch/android/h0/e;->g:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/CharSequence;
    .locals 2

    invoke-direct {p0}, Lcom/batch/android/h0/e;->e()Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/h0/e;->f:Ljava/lang/String;

    return-object p0
.end method
