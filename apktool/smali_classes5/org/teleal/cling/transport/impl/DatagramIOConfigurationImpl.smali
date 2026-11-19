.class public Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/transport/spi/DatagramIOConfiguration;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;->a:I

    const/16 v0, 0x280

    iput v0, p0, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;->a:I

    .line 13
    iput p2, p0, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;->b:I

    return-void
.end method
