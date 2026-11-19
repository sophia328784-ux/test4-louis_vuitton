.class final enum Lcom/google/ar/core/aj;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/ar/core/aj;

.field public static final enum b:Lcom/google/ar/core/aj;

.field public static final enum c:Lcom/google/ar/core/aj;

.field public static final enum d:Lcom/google/ar/core/aj;

.field public static final enum e:Lcom/google/ar/core/aj;

.field public static final enum f:Lcom/google/ar/core/aj;

.field public static final enum g:Lcom/google/ar/core/aj;

.field public static final enum h:Lcom/google/ar/core/aj;

.field public static final enum i:Lcom/google/ar/core/aj;

.field public static final enum j:Lcom/google/ar/core/aj;

.field private static final synthetic m:[Lcom/google/ar/core/aj;


# instance fields
.field final k:I

.field private final l:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/google/ar/core/aj;

    const v1, 0x41520100

    const-class v2, Lcom/google/ar/core/Trackable;

    const/4 v3, 0x0

    const-string v4, "BASE_TRACKABLE"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/ar/core/aj;-><init>(IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/ar/core/aj;->a:Lcom/google/ar/core/aj;

    new-instance v1, Lcom/google/ar/core/aj;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "UNKNOWN_TO_JAVA"

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/google/ar/core/aj;-><init>(IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/ar/core/aj;->b:Lcom/google/ar/core/aj;

    new-instance v2, Lcom/google/ar/core/aj;

    const v3, 0x41520101

    const-class v4, Lcom/google/ar/core/Plane;

    const/4 v5, 0x2

    const-string v6, "PLANE"

    invoke-direct {v2, v5, v3, v4, v6}, Lcom/google/ar/core/aj;-><init>(IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Lcom/google/ar/core/aj;->c:Lcom/google/ar/core/aj;

    new-instance v3, Lcom/google/ar/core/aj;

    const v4, 0x41520102

    const-class v5, Lcom/google/ar/core/Point;

    const/4 v6, 0x3

    const-string v7, "POINT"

    invoke-direct {v3, v6, v4, v5, v7}, Lcom/google/ar/core/aj;-><init>(IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/google/ar/core/aj;->d:Lcom/google/ar/core/aj;

    new-instance v4, Lcom/google/ar/core/aj;

    const v5, 0x41520104

    const-class v6, Lcom/google/ar/core/AugmentedImage;

    const/4 v7, 0x4

    const-string v8, "AUGMENTED_IMAGE"

    invoke-direct {v4, v7, v5, v6, v8}, Lcom/google/ar/core/aj;-><init>(IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v4, Lcom/google/ar/core/aj;->e:Lcom/google/ar/core/aj;

    new-instance v5, Lcom/google/ar/core/aj;

    const v6, 0x41520105

    const-class v7, Lcom/google/ar/core/AugmentedFace;

    const/4 v8, 0x5

    const-string v9, "FACE"

    invoke-direct {v5, v8, v6, v7, v9}, Lcom/google/ar/core/aj;-><init>(IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v5, Lcom/google/ar/core/aj;->f:Lcom/google/ar/core/aj;

    new-instance v6, Lcom/google/ar/core/aj;

    const v7, 0x41520103

    const-class v8, Lcom/google/ar/core/StreetscapeGeometry;

    const/4 v9, 0x6

    const-string v10, "STREETSCAPE_GEOMETRY"

    invoke-direct {v6, v9, v7, v8, v10}, Lcom/google/ar/core/aj;-><init>(IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v6, Lcom/google/ar/core/aj;->g:Lcom/google/ar/core/aj;

    new-instance v7, Lcom/google/ar/core/aj;

    const v8, 0x41520109

    const-class v9, Lcom/google/ar/core/Earth;

    const/4 v10, 0x7

    const-string v11, "EARTH"

    invoke-direct {v7, v10, v8, v9, v11}, Lcom/google/ar/core/aj;-><init>(IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lcom/google/ar/core/aj;->h:Lcom/google/ar/core/aj;

    new-instance v8, Lcom/google/ar/core/aj;

    const v9, 0x41520111

    const-class v10, Lcom/google/ar/core/DepthPoint;

    const/16 v11, 0x8

    const-string v12, "DEPTH_POINT"

    invoke-direct {v8, v11, v9, v10, v12}, Lcom/google/ar/core/aj;-><init>(IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v8, Lcom/google/ar/core/aj;->i:Lcom/google/ar/core/aj;

    new-instance v9, Lcom/google/ar/core/aj;

    const v10, 0x41520112

    const-class v11, Lcom/google/ar/core/InstantPlacementPoint;

    const/16 v12, 0x9

    const-string v13, "INSTANT_PLACEMENT_POINT"

    invoke-direct {v9, v12, v10, v11, v13}, Lcom/google/ar/core/aj;-><init>(IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v9, Lcom/google/ar/core/aj;->j:Lcom/google/ar/core/aj;

    filled-new-array/range {v0 .. v9}, [Lcom/google/ar/core/aj;

    move-result-object v0

    sput-object v0, Lcom/google/ar/core/aj;->m:[Lcom/google/ar/core/aj;

    return-void
.end method

.method public constructor <init>(IILjava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/google/ar/core/aj;->k:I

    iput-object p3, p0, Lcom/google/ar/core/aj;->l:Ljava/lang/Class;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/google/ar/core/aj;
    .locals 5

    invoke-static {}, Lcom/google/ar/core/aj;->values()[Lcom/google/ar/core/aj;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/google/ar/core/aj;->l:Ljava/lang/Class;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/ar/core/aj;->b:Lcom/google/ar/core/aj;

    return-object p0
.end method

.method public static values()[Lcom/google/ar/core/aj;
    .locals 1

    sget-object v0, Lcom/google/ar/core/aj;->m:[Lcom/google/ar/core/aj;

    invoke-virtual {v0}, [Lcom/google/ar/core/aj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/aj;

    return-object v0
.end method
