.class public abstract Landroidx/camera/video/Quality;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/Quality$ConstantQuality;,
        Landroidx/camera/video/Quality$QualitySource;
    }
.end annotation


# static fields
.field public static final a:Landroidx/camera/video/Quality;

.field public static final b:Landroidx/camera/video/Quality;

.field public static final c:Landroidx/camera/video/Quality;

.field public static final d:Landroidx/camera/video/Quality;

.field public static final e:Landroidx/camera/video/Quality;

.field public static final f:Landroidx/camera/video/Quality;

.field public static final g:Landroidx/camera/video/Quality;

.field public static final h:Ljava/util/HashSet;

.field public static final i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x2d0

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x280

    invoke-direct {v3, v4, v2}, Landroid/util/Size;-><init>(II)V

    filled-new-array {v0, v3}, [Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;

    const/4 v3, 0x4

    const/16 v4, 0x7d2

    const-string v5, "SD"

    invoke-direct {v2, v3, v4, v5, v0}, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;-><init>(IILjava/lang/String;Ljava/util/List;)V

    sput-object v2, Landroidx/camera/video/Quality;->a:Landroidx/camera/video/Quality;

    new-instance v0, Landroid/util/Size;

    const/16 v4, 0x500

    invoke-direct {v0, v4, v1}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;

    const/4 v4, 0x5

    const/16 v5, 0x7d3

    const-string v6, "HD"

    invoke-direct {v1, v4, v5, v6, v0}, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;-><init>(IILjava/lang/String;Ljava/util/List;)V

    sput-object v1, Landroidx/camera/video/Quality;->b:Landroidx/camera/video/Quality;

    new-instance v0, Landroid/util/Size;

    const/16 v5, 0x780

    const/16 v6, 0x438

    invoke-direct {v0, v5, v6}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v5, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;

    const/4 v6, 0x6

    const/16 v7, 0x7d4

    const-string v8, "FHD"

    invoke-direct {v5, v6, v7, v8, v0}, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;-><init>(IILjava/lang/String;Ljava/util/List;)V

    sput-object v5, Landroidx/camera/video/Quality;->c:Landroidx/camera/video/Quality;

    new-instance v0, Landroid/util/Size;

    const/16 v7, 0xf00

    const/16 v8, 0x870

    invoke-direct {v0, v7, v8}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v7, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;

    const/16 v8, 0x8

    const/16 v9, 0x7d5

    const-string v10, "UHD"

    invoke-direct {v7, v8, v9, v10, v0}, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;-><init>(IILjava/lang/String;Ljava/util/List;)V

    sput-object v7, Landroidx/camera/video/Quality;->d:Landroidx/camera/video/Quality;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v8, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;

    const/4 v9, 0x0

    const/16 v10, 0x7d0

    const-string v11, "LOWEST"

    invoke-direct {v8, v9, v10, v11, v0}, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;-><init>(IILjava/lang/String;Ljava/util/List;)V

    sput-object v8, Landroidx/camera/video/Quality;->e:Landroidx/camera/video/Quality;

    new-instance v10, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;

    const/4 v11, 0x1

    const/16 v12, 0x7d1

    const-string v13, "HIGHEST"

    invoke-direct {v10, v11, v12, v13, v0}, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;-><init>(IILjava/lang/String;Ljava/util/List;)V

    sput-object v10, Landroidx/camera/video/Quality;->f:Landroidx/camera/video/Quality;

    new-instance v12, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;

    const/4 v13, -0x1

    const-string v14, "NONE"

    invoke-direct {v12, v13, v13, v14, v0}, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;-><init>(IILjava/lang/String;Ljava/util/List;)V

    sput-object v12, Landroidx/camera/video/Quality;->g:Landroidx/camera/video/Quality;

    new-instance v0, Ljava/util/HashSet;

    new-array v6, v6, [Landroidx/camera/video/Quality;

    aput-object v8, v6, v9

    aput-object v10, v6, v11

    const/4 v8, 0x2

    aput-object v2, v6, v8

    const/4 v10, 0x3

    aput-object v1, v6, v10

    aput-object v5, v6, v3

    aput-object v7, v6, v4

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/camera/video/Quality;->h:Ljava/util/HashSet;

    new-array v0, v3, [Landroidx/camera/video/Quality;

    aput-object v7, v0, v9

    aput-object v5, v0, v11

    aput-object v1, v0, v8

    aput-object v2, v0, v10

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/Quality;->i:Ljava/util/List;

    return-void
.end method
