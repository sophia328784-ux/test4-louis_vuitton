.class Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/util/SystemUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemUiHelperImpl"
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;

.field final mDecorView:Landroid/view/View;

.field final mFlags:I

.field mIsShowing:Z

.field final mLevel:I

.field final mOnVisibilityChangeListener:Lcom/sightcall/universal/util/SystemUiHelper$OnVisibilityChangeListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IILcom/sightcall/universal/util/SystemUiHelper$OnVisibilityChangeListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mIsShowing:Z

    iput-object p1, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mActivity:Landroid/app/Activity;

    iput p2, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mLevel:I

    iput p3, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mFlags:I

    iput-object p4, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mOnVisibilityChangeListener:Lcom/sightcall/universal/util/SystemUiHelper$OnVisibilityChangeListener;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mDecorView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method


# virtual methods
.method public createHideFlags()I
    .locals 5

    iget v0, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mLevel:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-lt v0, v2, :cond_2

    or-int/lit16 v2, v4, 0x504

    if-lt v0, v3, :cond_1

    or-int/lit16 v4, v4, 0x704

    goto :goto_1

    :cond_1
    move v4, v2

    :cond_2
    :goto_1
    if-ne v0, v1, :cond_4

    iget p0, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mFlags:I

    and-int/2addr p0, v3

    if-eqz p0, :cond_3

    const/16 p0, 0x1000

    goto :goto_2

    :cond_3
    const/16 p0, 0x800

    :goto_2
    or-int/2addr p0, v4

    return p0

    :cond_4
    return v4
.end method

.method public createShowFlags()I
    .locals 1

    iget p0, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mLevel:I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/16 p0, 0x700

    return p0

    :cond_0
    const/16 p0, 0x500

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public createTestFlags()I
    .locals 1

    iget p0, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mLevel:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mDecorView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->createHideFlags()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mIsShowing:Z

    return p0
.end method

.method public onSystemUiHidden()V
    .locals 1

    iget v0, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mLevel:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->setIsShowing(Z)V

    return-void
.end method

.method public onSystemUiShown()V
    .locals 1

    iget v0, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mLevel:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->setIsShowing(Z)V

    return-void
.end method

.method public final onSystemUiVisibilityChange(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->createTestFlags()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->onSystemUiHidden()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->onSystemUiShown()V

    return-void
.end method

.method public setIsShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mIsShowing:Z

    iget-object p0, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mOnVisibilityChangeListener:Lcom/sightcall/universal/util/SystemUiHelper$OnVisibilityChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sightcall/universal/util/SystemUiHelper$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->mDecorView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/SystemUiHelper$SystemUiHelperImpl;->createShowFlags()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
