.class LZjTIAZ/CbGKec$zMeEGO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZjTIAZ/CbGKec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorDataTask"
.end annotation


# instance fields
.field final synthetic ZRQiWB:LZjTIAZ/CbGKec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLPJ/TGS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LZjTIAZ/CbGKec;)V
    .locals 0

    iput-object p1, p0, LZjTIAZ/CbGKec$zMeEGO;->ZRQiWB:LZjTIAZ/CbGKec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, LZjTIAZ/CbGKec$zMeEGO;->ZRQiWB:LZjTIAZ/CbGKec;

    sget v0, LZjTIAZ/CbGKec;->i:I

    invoke-virtual {p0}, LZjTIAZ/CbGKec;->a()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, LZjTIAZ/CbGKec$zMeEGO;->call()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
