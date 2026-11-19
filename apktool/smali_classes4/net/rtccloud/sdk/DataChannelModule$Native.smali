.class interface abstract Lnet/rtccloud/sdk/DataChannelModule$Native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/DataChannelModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# static fields
.field public static final JNI:Lnet/rtccloud/sdk/DataChannelModule$Native;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/DataChannelModule$Native$1;

    invoke-direct {v0}, Lnet/rtccloud/sdk/DataChannelModule$Native$1;-><init>()V

    sput-object v0, Lnet/rtccloud/sdk/DataChannelModule$Native;->JNI:Lnet/rtccloud/sdk/DataChannelModule$Native;

    return-void
.end method


# virtual methods
.method public abstract ack(Ljava/lang/String;II)Z
.end method

.method public abstract send([BJLjava/lang/String;)Z
.end method

.method public abstract send([BJ[Ljava/lang/String;)Z
.end method

.method public abstract sendInBand([B)Z
.end method

.method public abstract sendMpi(Ljava/lang/String;J[B)Z
.end method
