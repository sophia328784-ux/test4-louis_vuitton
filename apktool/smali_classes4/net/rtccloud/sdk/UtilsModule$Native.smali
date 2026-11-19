.class public interface abstract Lnet/rtccloud/sdk/UtilsModule$Native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/UtilsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# static fields
.field public static final JNI:Lnet/rtccloud/sdk/UtilsModule$Native;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/UtilsModule$Native$1;

    invoke-direct {v0}, Lnet/rtccloud/sdk/UtilsModule$Native$1;-><init>()V

    sput-object v0, Lnet/rtccloud/sdk/UtilsModule$Native;->JNI:Lnet/rtccloud/sdk/UtilsModule$Native;

    return-void
.end method


# virtual methods
.method public abstract checkCloudConnection()I
.end method

.method public abstract setDeadPartyTimeout(I)Z
.end method

.method public abstract setEnableLocalIce(I)Z
.end method

.method public abstract setEnableUSAPTURN(I)Z
.end method

.method public abstract setEncodingParameters(Lnet/rtccloud/sdk/util/EncodingParameters$Audio;)Z
.end method

.method public abstract setEncodingParameters(Lnet/rtccloud/sdk/util/EncodingParameters$Video;)Z
.end method

.method public abstract swapFathers()V
.end method
