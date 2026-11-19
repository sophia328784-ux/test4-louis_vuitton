.class public final Landroidx/core/app/PictureInPictureParamsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/PictureInPictureParamsCompat$Api31Impl;,
        Landroidx/core/app/PictureInPictureParamsCompat$Api33Impl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0013\u0014Bs\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/core/app/PictureInPictureParamsCompat;",
        "",
        "",
        "isEnabled",
        "Landroid/util/Rational;",
        "aspectRatio",
        "",
        "Landroid/app/RemoteAction;",
        "actions",
        "Landroid/graphics/Rect;",
        "sourceRectHint",
        "isSeamlessResizeEnabled",
        "closeAction",
        "expandedAspectRatio",
        "",
        "title",
        "subTitle",
        "<init>",
        "(ZLandroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;ZLandroid/app/RemoteAction;Landroid/util/Rational;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V",
        "Api31Impl",
        "Api33Impl",
        "core"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Z

.field public final b:Landroid/util/Rational;

.field public final c:Ljava/util/List;

.field public final d:Landroid/graphics/Rect;

.field public final e:Z

.field public final f:Landroid/app/RemoteAction;

.field public final g:Landroid/util/Rational;

.field public final h:Ljava/lang/CharSequence;

.field public final i:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 81
    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Landroidx/core/app/PictureInPictureParamsCompat;-><init>(ZLandroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;ZLandroid/app/RemoteAction;Landroid/util/Rational;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLandroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;ZLandroid/app/RemoteAction;Landroid/util/Rational;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/util/Rational;",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/graphics/Rect;",
            "Z",
            "Landroid/app/RemoteAction;",
            "Landroid/util/Rational;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean p1, p0, Landroidx/core/app/PictureInPictureParamsCompat;->a:Z

    .line 73
    iput-object p2, p0, Landroidx/core/app/PictureInPictureParamsCompat;->b:Landroid/util/Rational;

    .line 74
    iput-object p3, p0, Landroidx/core/app/PictureInPictureParamsCompat;->c:Ljava/util/List;

    .line 75
    iput-object p4, p0, Landroidx/core/app/PictureInPictureParamsCompat;->d:Landroid/graphics/Rect;

    .line 76
    iput-boolean p5, p0, Landroidx/core/app/PictureInPictureParamsCompat;->e:Z

    .line 77
    iput-object p6, p0, Landroidx/core/app/PictureInPictureParamsCompat;->f:Landroid/app/RemoteAction;

    .line 78
    iput-object p7, p0, Landroidx/core/app/PictureInPictureParamsCompat;->g:Landroid/util/Rational;

    .line 79
    iput-object p8, p0, Landroidx/core/app/PictureInPictureParamsCompat;->h:Ljava/lang/CharSequence;

    .line 80
    iput-object p9, p0, Landroidx/core/app/PictureInPictureParamsCompat;->i:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(ZLandroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;ZLandroid/app/RemoteAction;Landroid/util/Rational;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p11, p10, 0x2

    const/4 v0, 0x0

    if-eqz p11, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    sget-object p3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    const/4 p5, 0x0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    move-object p11, v0

    move-object p9, p7

    move-object p10, p8

    move p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    goto :goto_0

    :cond_8
    move-object p11, p9

    move-object p10, p8

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    :goto_0
    invoke-direct/range {p2 .. p11}, Landroidx/core/app/PictureInPictureParamsCompat;-><init>(ZLandroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;ZLandroid/app/RemoteAction;Landroid/util/Rational;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/PictureInPictureParams;
    .locals 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v4, p0, Landroidx/core/app/PictureInPictureParamsCompat;->d:Landroid/graphics/Rect;

    iget-object v3, p0, Landroidx/core/app/PictureInPictureParamsCompat;->c:Ljava/util/List;

    const/16 v1, 0x21

    iget-object v2, p0, Landroidx/core/app/PictureInPictureParamsCompat;->b:Landroid/util/Rational;

    if-lt v0, v1, :cond_0

    iget-object v8, p0, Landroidx/core/app/PictureInPictureParamsCompat;->h:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroidx/core/app/PictureInPictureParamsCompat;->i:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Landroidx/core/app/PictureInPictureParamsCompat;->a:Z

    iget-boolean v5, p0, Landroidx/core/app/PictureInPictureParamsCompat;->e:Z

    iget-object v6, p0, Landroidx/core/app/PictureInPictureParamsCompat;->f:Landroid/app/RemoteAction;

    iget-object v7, p0, Landroidx/core/app/PictureInPictureParamsCompat;->g:Landroid/util/Rational;

    invoke-static/range {v1 .. v9}, Landroidx/core/app/PictureInPictureParamsCompat$Api33Impl;->a(ZLandroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;ZLandroid/app/RemoteAction;Landroid/util/Rational;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/PictureInPictureParams;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/core/app/PictureInPictureParamsCompat;->a:Z

    iget-boolean p0, p0, Landroidx/core/app/PictureInPictureParamsCompat;->e:Z

    invoke-static {v2, v3, v4, v0, p0}, Landroidx/core/app/PictureInPictureParamsCompat$Api31Impl;->a(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;ZZ)Landroid/app/PictureInPictureParams;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {p0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {p0, v2}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/PictureInPictureParams$Builder;->setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/app/PictureInPictureParams$Builder;->setSourceRectHint(Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
