.class public final Landroidx/compose/ui/graphics/vector/ImageVector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/vector/ImageVector$Builder;,
        Landroidx/compose/ui/graphics/vector/ImageVector$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0016\u0017B[\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "",
        "",
        "name",
        "Landroidx/compose/ui/unit/Dp;",
        "defaultWidth",
        "defaultHeight",
        "",
        "viewportWidth",
        "viewportHeight",
        "Landroidx/compose/ui/graphics/vector/VectorGroup;",
        "root",
        "Landroidx/compose/ui/graphics/Color;",
        "tintColor",
        "Landroidx/compose/ui/graphics/BlendMode;",
        "tintBlendMode",
        "",
        "autoMirror",
        "",
        "genId",
        "<init>",
        "(Ljava/lang/String;FFFFLandroidx/compose/ui/graphics/vector/VectorGroup;JIZILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Builder",
        "Companion",
        "ui"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final k:Landroidx/compose/ui/graphics/vector/ImageVector$Companion;

.field public static l:I

.field public static final m:Landroidx/compose/ui/graphics/vector/ImageVector$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:Landroidx/compose/ui/graphics/vector/VectorGroup;

.field public final g:J

.field public final h:I

.field public final i:Z

.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/vector/ImageVector;->k:Landroidx/compose/ui/graphics/vector/ImageVector$Companion;

    sput-object v0, Landroidx/compose/ui/graphics/vector/ImageVector;->m:Landroidx/compose/ui/graphics/vector/ImageVector$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFFLandroidx/compose/ui/graphics/vector/VectorGroup;JIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p12

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/ui/graphics/vector/ImageVector;->k:Landroidx/compose/ui/graphics/vector/ImageVector$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/graphics/vector/ImageVector;->m:Landroidx/compose/ui/graphics/vector/ImageVector$Companion;

    monitor-enter v1

    :try_start_0
    sget v0, Landroidx/compose/ui/graphics/vector/ImageVector;->l:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Landroidx/compose/ui/graphics/vector/ImageVector;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    move v13, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0

    :cond_0
    move/from16 v13, p11

    :goto_0
    const/4 v14, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v2 .. v14}, Landroidx/compose/ui/graphics/vector/ImageVector;-><init>(Ljava/lang/String;FFFFLandroidx/compose/ui/graphics/vector/VectorGroup;JIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFFLandroidx/compose/ui/graphics/vector/VectorGroup;JIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->a:Ljava/lang/String;

    .line 55
    iput p2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->b:F

    .line 56
    iput p3, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->c:F

    .line 57
    iput p4, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->d:F

    .line 58
    iput p5, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->e:F

    .line 59
    iput-object p6, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->f:Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 60
    iput-wide p7, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->g:J

    .line 61
    iput p9, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->h:I

    .line 62
    iput-boolean p10, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->i:Z

    .line 63
    iput p11, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->j:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/vector/ImageVector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v1, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->a:Ljava/lang/String;

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->b:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->b:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->c:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->c:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->d:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->d:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_8

    iget v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->e:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->e:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_8

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->f:Landroidx/compose/ui/graphics/vector/VectorGroup;

    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->f:Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->g:J

    iget-wide v5, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->g:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->h:I

    sget-object v3, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    iget v3, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->h:I

    if-ne v3, v1, :cond_8

    iget-boolean p0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->i:Z

    iget-boolean p1, p1, Landroidx/compose/ui/graphics/vector/ImageVector;->i:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0

    :cond_8
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    sget-object v2, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    iget v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->b:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->c:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->d:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->e:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->f:Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/VectorGroup;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    sget-object v0, Lkotlin/ULong;->c:Lkotlin/ULong$Companion;

    iget-wide v3, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->g:J

    invoke-static {v2, v1, v3, v4}, Lfc;->a(IIJ)I

    move-result v0

    sget-object v2, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    iget v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->h:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-boolean p0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->i:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
