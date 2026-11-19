.class public Lcom/sightcall/universal/internal/view/SystemBarConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NAV_BAR_HEIGHT_LANDSCAPE_RES_NAME:Ljava/lang/String; = "navigation_bar_height_landscape"

.field private static final NAV_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "navigation_bar_height"

.field private static final NAV_BAR_WIDTH_RES_NAME:Ljava/lang/String; = "navigation_bar_width"

.field private static final SHOW_NAV_BAR_RES_NAME:Ljava/lang/String; = "config_showNavigationBar"

.field private static final STATUS_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "status_bar_height"

.field private static sNavBarOverride:Ljava/lang/String;


# instance fields
.field private final mActionBarHeight:I

.field private final mHasNavigationBar:Z

.field private final mInPortrait:Z

.field private final mNavigationBarHeight:I

.field private final mNavigationBarWidth:I

.field private final mSmallestWidthDp:F

.field private final mStatusBarHeight:I

.field private final mTranslucentNavBar:Z

.field private final mTranslucentStatusBar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v2, "qemu.hw.mainkeys"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/sightcall/universal/internal/view/SystemBarConfig;->sNavBarOverride:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    sput-object v0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->sNavBarOverride:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mInPortrait:Z

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/SystemBarConfig;->getSmallestWidthDp(Landroid/app/Activity;)F

    move-result v1

    iput v1, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mSmallestWidthDp:F

    const-string v1, "status_bar_height"

    invoke-direct {p0, v0, v1}, Lcom/sightcall/universal/internal/view/SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mStatusBarHeight:I

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/SystemBarConfig;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mActionBarHeight:I

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/SystemBarConfig;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mNavigationBarHeight:I

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/SystemBarConfig;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mNavigationBarWidth:I

    if-lez v0, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mHasNavigationBar:Z

    iput-boolean p2, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mTranslucentStatusBar:Z

    iput-boolean p3, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mTranslucentNavBar:Z

    return-void
.end method

.method private getActionBarHeight(Landroid/content/Context;)I
    .locals 3

    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x10102eb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method

.method private getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1

    const-string p0, "dimen"

    const-string v0, "android"

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getNavigationBarHeight(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/SystemBarConfig;->hasNavBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mInPortrait:Z

    if-eqz p1, :cond_0

    const-string p1, "navigation_bar_height"

    goto :goto_0

    :cond_0
    const-string p1, "navigation_bar_height_landscape"

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/sightcall/universal/internal/view/SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getNavigationBarWidth(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/SystemBarConfig;->hasNavBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "navigation_bar_width"

    invoke-direct {p0, v0, p1}, Lcom/sightcall/universal/internal/view/SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getSmallestWidthDp(Landroid/app/Activity;)F
    .locals 1

    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private hasNavBar(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "bool"

    const-string v1, "android"

    const-string v2, "config_showNavigationBar"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    const-string p1, "1"

    sget-object v0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->sNavBarOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p1, "0"

    sget-object v0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->sNavBarOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return p0

    :cond_2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method


# virtual methods
.method public getActionBarHeight()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mActionBarHeight:I

    return p0
.end method

.method public getNavigationBarHeight()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mNavigationBarHeight:I

    return p0
.end method

.method public getNavigationBarWidth()I
    .locals 0

    .line 19
    iget p0, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mNavigationBarWidth:I

    return p0
.end method

.method public getPixelInsetBottom()I
    .locals 1

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mTranslucentNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mNavigationBarHeight:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPixelInsetRight()I
    .locals 1

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mTranslucentNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mNavigationBarWidth:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPixelInsetTop(Z)I
    .locals 2

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mTranslucentStatusBar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mStatusBarHeight:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mActionBarHeight:I

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mStatusBarHeight:I

    return p0
.end method

.method public hasNavigtionBar()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mHasNavigationBar:Z

    return p0
.end method

.method public isNavigationAtBottom()Z
    .locals 2

    iget v0, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mSmallestWidthDp:F

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/SystemBarConfig;->mInPortrait:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
