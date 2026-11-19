.class public Lcom/batch/android/debug/BatchDebugActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/j/b;


# static fields
.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private final a:[Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Lcom/batch/android/debug/BatchDebugActivity;->a:[Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private static synthetic a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    const/16 v0, 0x207

    .line 118
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 120
    iget v1, p1, Landroidx/core/graphics/Insets;->a:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 121
    iget v1, p1, Landroidx/core/graphics/Insets;->d:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 122
    iget v1, p1, Landroidx/core/graphics/Insets;->c:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 123
    iget p1, p1, Landroidx/core/graphics/Insets;->b:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 124
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    :cond_0
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->b:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 110
    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->a(Landroid/view/Window;Z)V

    .line 111
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 112
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v2, v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    const/4 v0, 0x1

    .line 113
    invoke-virtual {v2, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->e(Z)V

    .line 114
    invoke-virtual {v2, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->d(Z)V

    .line 115
    sget v0, Lcom/batch/android/R$id;->com_batchsdk_debug_fragment_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 116
    new-instance v0, Lmd;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmd;-><init>(I)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->x(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method private a(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, v0}, Lcom/batch/android/debug/BatchDebugActivity;->a(IZLjava/lang/String;)V

    return-void
.end method

.method private a(IZLjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/batch/android/debug/BatchDebugActivity;->a:[Landroidx/fragment/app/Fragment;

    array-length v1, v0

    if-ge p1, v1, :cond_7

    aget-object v1, v0, p1

    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/batch/android/n/f;->a()Lcom/batch/android/s/a;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/batch/android/l/b;->a(Ljava/lang/String;Lcom/batch/android/s/a;)Lcom/batch/android/l/b;

    move-result-object p3

    aput-object p3, v0, p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/batch/android/n/f;->a()Lcom/batch/android/s/a;

    move-result-object p3

    invoke-static {p3}, Lcom/batch/android/l/c;->a(Lcom/batch/android/s/a;)Lcom/batch/android/l/c;

    move-result-object p3

    aput-object p3, v0, p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/batch/android/l/e;->c()Lcom/batch/android/l/e;

    move-result-object p3

    aput-object p3, v0, p1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/batch/android/l/a;->b()Lcom/batch/android/l/a;

    move-result-object p3

    aput-object p3, v0, p1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/batch/android/l/d;->a()Lcom/batch/android/l/d;

    move-result-object p3

    aput-object p3, v0, p1

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    iget-object p0, p0, Lcom/batch/android/debug/BatchDebugActivity;->a:[Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    sget p2, Lcom/batch/android/R$id;->com_batchsdk_debug_fragment_content:I

    aget-object p0, p0, p1

    invoke-virtual {p3, p2, p0, v0}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentTransaction;->g()V

    return-void

    :cond_6
    sget p2, Lcom/batch/android/R$id;->com_batchsdk_debug_fragment_content:I

    aget-object p0, p0, p1

    invoke-virtual {p3, p2, p0, v0}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentTransaction;->e()I

    :cond_7
    return-void
.end method

.method public static synthetic v(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/debug/BatchDebugActivity;->a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/batch/android/debug/BatchDebugActivity;->a(IZ)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, v0, v1, p1}, Lcom/batch/android/debug/BatchDebugActivity;->a(IZLjava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/batch/android/R$layout;->com_batchsdk_debug_view:I

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/batch/android/debug/BatchDebugActivity;->a(IZ)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v0, Lcom/batch/android/R$string;->com_batchsdk_debug_view_title:I

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    invoke-direct {p0}, Lcom/batch/android/debug/BatchDebugActivity;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/batch/android/Batch;->onDestroy(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    invoke-static {p0}, Lcom/batch/android/Batch;->onStart(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-static {p0}, Lcom/batch/android/Batch;->onStop(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method
