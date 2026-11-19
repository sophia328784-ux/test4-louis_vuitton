.class public Lorg/teleal/cling/support/model/BrowseResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 8

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 19
    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/support/model/BrowseResult;-><init>(Ljava/lang/String;JJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 1

    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, p2, p3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    new-instance p2, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {p2, p4, p5}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    new-instance p3, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {p3, p6, p7}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/teleal/cling/support/model/BrowseResult;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/teleal/cling/support/model/BrowseResult;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lorg/teleal/cling/support/model/BrowseResult;->b:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    return-void
.end method
