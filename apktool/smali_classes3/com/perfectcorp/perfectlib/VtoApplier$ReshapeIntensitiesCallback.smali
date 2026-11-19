.class public interface abstract Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeIntensitiesCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/VtoApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReshapeIntensitiesCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/perfectcorp/perfectlib/ReshapeEffect;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
