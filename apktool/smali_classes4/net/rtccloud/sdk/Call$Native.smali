.class interface abstract Lnet/rtccloud/sdk/Call$Native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# static fields
.field public static final JNI:Lnet/rtccloud/sdk/Call$Native;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/Call$Native$1;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Call$Native$1;-><init>()V

    sput-object v0, Lnet/rtccloud/sdk/Call$Native;->JNI:Lnet/rtccloud/sdk/Call$Native;

    return-void
.end method


# virtual methods
.method public abstract control(Lnet/rtccloud/sdk/Call$Control;II)V
.end method

.method public abstract executor()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract qualityIndicator()Lnet/rtccloud/sdk/Call$QualityIndicator;
.end method

.method public abstract startTranslation()Z
.end method

.method public abstract stopTranslation()Z
.end method
