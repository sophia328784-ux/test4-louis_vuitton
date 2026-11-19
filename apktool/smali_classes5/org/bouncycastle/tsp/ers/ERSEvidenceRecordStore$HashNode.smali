.class Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashNode"
.end annotation


# instance fields
.field private final dataHash:[B

.field private final hashCode:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;->dataHash:[B

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;->dataHash:[B

    check-cast p1, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;

    iget-object p1, p1, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;->dataHash:[B

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordStore$HashNode;->hashCode:I

    return p0
.end method
