.class public final synthetic Lhb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Landroidx/media3/exoplayer/ExoPlayer;


# direct methods
.method public synthetic constructor <init>(ZLandroid/content/Context;Landroidx/compose/runtime/MutableState;IILandroidx/media3/exoplayer/ExoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lhb0;->b:Z

    iput-object p2, p0, Lhb0;->c:Landroid/content/Context;

    iput-object p3, p0, Lhb0;->d:Landroidx/compose/runtime/MutableState;

    iput p4, p0, Lhb0;->e:I

    iput p5, p0, Lhb0;->f:I

    iput-object p6, p0, Lhb0;->g:Landroidx/media3/exoplayer/ExoPlayer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p0, Lhb0;->b:Z

    iget-object v0, p0, Lhb0;->c:Landroid/content/Context;

    iget-object v1, p0, Lhb0;->d:Landroidx/compose/runtime/MutableState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f18000d

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v4, v3

    :goto_0
    if-eq v4, v2, :cond_0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    invoke-interface {v1, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_1
    new-instance p1, Landroidx/media3/ui/PlayerView;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AttributeSet;

    invoke-direct {p1, v0, v1}, Landroidx/media3/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v1, p1, Landroidx/media3/ui/PlayerView;->m:Landroidx/media3/ui/PlayerControlView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlView;->g()V

    :cond_2
    invoke-virtual {p1, v3}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    iget v1, p0, Lhb0;->e:I

    invoke-virtual {p1, v1}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    iget v1, p0, Lhb0;->f:I

    invoke-virtual {p1, v1}, Landroidx/media3/ui/PlayerView;->setShutterBackgroundColor(I)V

    invoke-virtual {p1, v2}, Landroidx/media3/ui/PlayerView;->setKeepContentOnPlayerReset(Z)V

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->getSubtitleView()Landroidx/media3/ui/SubtitleView;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroidx/media3/ui/SubtitleView;->setApplyEmbeddedFontSizes(Z)V

    invoke-virtual {v1}, Landroidx/media3/ui/SubtitleView;->a()V

    new-instance v4, Landroidx/media3/ui/CaptionStyleCompat;

    const v2, 0x7f06043b

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Landroidx/media3/ui/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    invoke-virtual {v1, v4}, Landroidx/media3/ui/SubtitleView;->setStyle(Landroidx/media3/ui/CaptionStyleCompat;)V

    :cond_3
    iget-object p0, p0, Lhb0;->g:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {p1, p0}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method
