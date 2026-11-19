.class abstract Lorg/spongycastle/asn1/LimitedInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final b:Ljava/io/InputStream;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/LimitedInputStream;->b:Ljava/io/InputStream;

    iput p2, p0, Lorg/spongycastle/asn1/LimitedInputStream;->c:I

    return-void
.end method


# virtual methods
.method public h()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/asn1/LimitedInputStream;->c:I

    return p0
.end method

.method public final j()V
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/asn1/LimitedInputStream;->b:Ljava/io/InputStream;

    instance-of v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->g:Z

    invoke-virtual {p0}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->k()Z

    :cond_0
    return-void
.end method
