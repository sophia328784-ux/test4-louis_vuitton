.class public Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment$a;
    }
.end annotation


# static fields
.field private static final A:I = 0x111110

.field private static b:I = 0xd

.field private static c:I = 0x14

.field private static d:I = 0x96

.field private static e:I = 0x96

.field private static f:I = 0x3e8

.field private static g:I = 0x123456

.field private static h:I = 0x888666

.field private static final i:F = 18.0f

.field private static final j:I = 0xfffff

.field private static final k:I = 0x11111

.field private static final l:I = 0x11112

.field private static final m:I = 0x11113

.field private static final n:I = 0x11114

.field private static final o:I = 0x11115

.field private static final p:I = 0x20

.field private static t:Landroid/graphics/Bitmap; = null

.field private static final u:Ljava/lang/String; = "selectpage.png"

.field private static final v:Lcom/networkbench/agent/impl/c/e;

.field private static final w:I = -0x90702

.field private static x:Lcom/networkbench/agent/impl/floatbtnmanager/m; = null

.field private static final y:I = -0xae9011

.field private static final z:I = 0x11117


# instance fields
.field private a:Landroid/content/Context;

.field private q:Landroid/widget/EditText;

.field private r:Lcom/networkbench/agent/impl/floatbtnmanager/l;

.field private s:Lcom/networkbench/agent/impl/floatbtnmanager/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->v:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Lcom/networkbench/agent/impl/floatbtnmanager/m;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/m;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->x:Lcom/networkbench/agent/impl/floatbtnmanager/m;

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment$1;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private a(II)Landroid/widget/LinearLayout;
    .locals 1

    .line 56
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    sget p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->c:I

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 59
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 60
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 61
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private a(IILandroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 62
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    iget p3, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    mul-int/2addr p1, p3

    div-int/2addr p1, p2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    return-object p0
.end method

.method private a(Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, -0xae9011

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41900000    # 18.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setTextAlignment(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;)Lcom/networkbench/agent/impl/floatbtnmanager/l;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->r:Lcom/networkbench/agent/impl/floatbtnmanager/l;

    return-object p0
.end method

.method public static synthetic a()Lcom/networkbench/agent/impl/floatbtnmanager/m;
    .locals 1

    .line 53
    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->x:Lcom/networkbench/agent/impl/floatbtnmanager/m;

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;I)Landroid/widget/EditText;
    .locals 2

    .line 186
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 189
    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    .line 190
    invoke-direct {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->e()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 191
    new-instance p0, Landroid/text/InputFilter$LengthFilter;

    const/16 p1, 0x20

    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/text/InputFilter;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-object v0
.end method

.method private b()Landroid/widget/RelativeLayout;
    .locals 6

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v4, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->c:I

    mul-int/lit8 v5, v4, 0x2

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    mul-int/lit8 v5, v4, 0x2

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v4, 0x111111

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    const-string v5, "\u9875\u9762\u622a\u56fe"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    sget v5, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->c:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v4, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->c:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const v4, -0x777778

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const v4, 0x111114

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->f()Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->h:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    sget-object v2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v5, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p0, v2, v5, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a(IILandroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->c:I

    iput v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->c:I

    iput v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sget-object p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .line 182
    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment$3;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment$3;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private c()Landroid/widget/RelativeLayout;
    .locals 7

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v4, 0x0

    sget v5, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->d:I

    invoke-virtual {v0, v4, v5, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const v2, 0x11117

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v4, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->c:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "< \u8fd4\u56de"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, -0xae9011

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x11111

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v5, "\u53ef\u89c6\u5316\u9875\u9762\u547d\u540d"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->d()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/view/View;

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a:Landroid/content/Context;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {p0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    const v3, 0x111110

    invoke-virtual {p0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->c:I

    iput v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private d()Landroid/widget/LinearLayout;
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    const v4, 0x11111

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->c:I

    mul-int/lit8 v4, v2, 0x2

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x111110

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const-string v1, "\u8bf7\u8f93\u5165\u9875\u9762\u540d\u79f0"

    const v2, 0x11113

    invoke-direct {p0, v1, v2}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->b(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x40400000    # 3.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->q:Landroid/widget/EditText;

    const-string v2, "\u4e0a\u4f20"

    const v3, 0xfffff

    invoke-direct {p0, v2, v3}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private e()Landroid/graphics/drawable/ShapeDrawable;
    .locals 2

    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object p0
.end method

.method private f()Landroid/widget/ImageView;
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    sget v2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->f:I

    invoke-direct {p0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "selectpage.png"

    invoke-static {p0, v2, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->t:Landroid/graphics/Bitmap;

    invoke-static {p0, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    sget-object v1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->x:Lcom/networkbench/agent/impl/floatbtnmanager/m;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/m;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->x:Lcom/networkbench/agent/impl/floatbtnmanager/m;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/m;->f(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3

    const-string v0, "NBSPageData.lastPageData != null:"

    const-string v1, "NBSPageData.lastPageData == null:"

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    :try_start_0
    sget-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;->a:Landroid/graphics/Bitmap;

    sput-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->t:Landroid/graphics/Bitmap;

    sget-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->x:Lcom/networkbench/agent/impl/floatbtnmanager/m;

    sget-object v2, Lcom/networkbench/agent/impl/floatbtnmanager/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/networkbench/agent/impl/floatbtnmanager/m;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->x:Lcom/networkbench/agent/impl/floatbtnmanager/m;

    sget-object v2, Lcom/networkbench/agent/impl/floatbtnmanager/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/networkbench/agent/impl/floatbtnmanager/m;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/d/b;->b()Lcom/networkbench/agent/impl/data/d/c;

    sget-object p1, Lcom/networkbench/agent/impl/data/d/h;->a:Lcom/networkbench/agent/impl/data/d/c;

    if-nez p1, :cond_0

    sget-object p1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/b;->b()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->x:Lcom/networkbench/agent/impl/floatbtnmanager/m;

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/b;->b()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/m;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/data/d/j;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/networkbench/agent/impl/data/d/h;->a:Lcom/networkbench/agent/impl/data/d/c;

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/data/d/c;->a(Ljava/lang/String;)V

    :cond_1
    sget-object p1, Lcom/networkbench/agent/impl/data/d/h;->a:Lcom/networkbench/agent/impl/data/d/c;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/d/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/networkbench/agent/impl/data/d/h;->a:Lcom/networkbench/agent/impl/data/d/c;

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/b;->b()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/data/d/c;->a(Ljava/lang/String;)V

    :cond_2
    sget-object p1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/data/d/h;->a:Lcom/networkbench/agent/impl/data/d/c;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->x:Lcom/networkbench/agent/impl/floatbtnmanager/m;

    sget-object v0, Lcom/networkbench/agent/impl/data/d/h;->a:Lcom/networkbench/agent/impl/data/d/c;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/m;->d(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->x:Lcom/networkbench/agent/impl/floatbtnmanager/m;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "actionFetures"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/data/a/a;

    iput-object v0, p1, Lcom/networkbench/agent/impl/floatbtnmanager/m;->a:Lcom/networkbench/agent/impl/data/a/a;

    :cond_3
    new-instance p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment$2;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment$2;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->r:Lcom/networkbench/agent/impl/floatbtnmanager/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->v:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "error submitPageVisualFragment onAttach"

    invoke-interface {p1, v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x11111

    if-eq v0, v1, :cond_3

    const v1, 0xfffff

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p0

    const-string v0, "\u9875\u9762\u540d\u79f0\u4e3a\u7a7a\uff0c \u8bf7\u8bbe\u7f6e\u76f8\u5e94\u9875\u9762"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->g()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    new-instance v2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment$a;

    sget-object v3, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->x:Lcom/networkbench/agent/impl/floatbtnmanager/m;

    iget-object v3, v3, Lcom/networkbench/agent/impl/floatbtnmanager/m;->a:Lcom/networkbench/agent/impl/data/a/a;

    if-nez v3, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1, v1}, Lcom/networkbench/agent/impl/data/a/a;->a(ZZ)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v2, p0, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment$a;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_1
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a:Landroid/content/Context;

    new-instance p2, Lcom/networkbench/agent/impl/floatbtnmanager/j;

    invoke-direct {p2, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/j;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->s:Lcom/networkbench/agent/impl/floatbtnmanager/j;

    iget-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x40e00000    # 7.0f

    mul-float/2addr p2, p1

    float-to-int p2, p2

    sput p2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->c:I

    const/high16 p2, 0x41500000    # 13.0f

    mul-float/2addr p2, p1

    float-to-int p2, p2

    sput p2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->b:I

    const/high16 p2, 0x42200000    # 40.0f

    mul-float/2addr p2, p1

    float-to-int p2, p2

    sput p2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->d:I

    const/high16 p2, 0x42480000    # 50.0f

    mul-float/2addr p2, p1

    float-to-int p2, p2

    sput p2, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->e:I

    const/high16 p2, 0x43c80000    # 400.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    sput p1, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->f:I

    iget-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->s:Lcom/networkbench/agent/impl/floatbtnmanager/j;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/floatbtnmanager/j;->a()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->c()Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->b()Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, 0x3

    const v0, 0x11117

    invoke-virtual {p2, p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackOnHiddenChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V

    return-void
.end method
