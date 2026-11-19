.class public interface abstract Lcom/lp/ble/manager/LPBLEAPListListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onFailed(Ljava/lang/Exception;)V
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lp/ble/manager/ApItem;",
            ">;)V"
        }
    .end annotation
.end method
