.class public Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveObject3DMaterialData"
.end annotation


# instance fields
.field public color:[F

.field public texture_image:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->color:[F

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->texture_image:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>([F)V
    .locals 4

    .line 20
    invoke-direct {p0}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->color:[F

    aget v3, p1, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private IsUseTexture()Z
    .locals 0

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->texture_image:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic access$000(Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;->IsUseTexture()Z

    move-result p0

    return p0
.end method
