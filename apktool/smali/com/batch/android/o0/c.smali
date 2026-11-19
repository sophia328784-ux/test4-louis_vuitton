.class public Lcom/batch/android/o0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Theme.MaterialComponents.Light"

    invoke-static {v1, v0, p0}, Lcom/batch/android/o0/c;->a(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    const-string v1, "Theme.AppCompat.Light"

    invoke-static {v1, v0, p0}, Lcom/batch/android/o0/c;->a(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    return p0

    :cond_1
    const p0, 0x103012b

    return p0
.end method

.method private static a(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1

    .line 30
    const-string v0, "style"

    invoke-virtual {p1, p0, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Theme.MaterialComponents.DayNight"

    invoke-static {v1, v0, p0}, Lcom/batch/android/o0/c;->a(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    const-string v1, "Theme.AppCompat.DayNight"

    invoke-static {v1, v0, p0}, Lcom/batch/android/o0/c;->a(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    const-string v1, "Theme.AppCompat.Light"

    invoke-static {v1, v0, p0}, Lcom/batch/android/o0/c;->a(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2

    return p0

    :cond_2
    const p0, 0x10302e3

    return p0
.end method
