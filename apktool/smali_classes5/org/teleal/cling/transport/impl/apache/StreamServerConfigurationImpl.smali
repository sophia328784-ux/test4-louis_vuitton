.class public Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/transport/spi/StreamServerConfiguration;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->a:I

    return-void
.end method
