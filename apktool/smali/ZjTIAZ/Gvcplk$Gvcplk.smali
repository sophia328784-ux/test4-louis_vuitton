.class LZjTIAZ/Gvcplk$Gvcplk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZjTIAZ/Gvcplk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorDataTask"
.end annotation


# instance fields
.field final synthetic ZRQiWB:LZjTIAZ/Gvcplk;


# direct methods
.method public constructor <init>(LZjTIAZ/Gvcplk;)V
    .locals 0

    iput-object p1, p0, LZjTIAZ/Gvcplk$Gvcplk;->ZRQiWB:LZjTIAZ/Gvcplk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, LZjTIAZ/Gvcplk$Gvcplk;->call()LwcQZwr/MrfBl;

    move-result-object p0

    return-object p0
.end method

.method public call()LwcQZwr/MrfBl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LwcQZwr/MrfBl<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, LZjTIAZ/Gvcplk$Gvcplk;->ZRQiWB:LZjTIAZ/Gvcplk;

    sget v0, LZjTIAZ/Gvcplk;->k:I

    invoke-virtual {p0}, LZjTIAZ/Gvcplk;->a()LwcQZwr/MrfBl;

    move-result-object p0

    return-object p0
.end method
