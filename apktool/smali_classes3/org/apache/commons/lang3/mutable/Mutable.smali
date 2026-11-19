.class public interface abstract Lorg/apache/commons/lang3/mutable/Mutable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Lorg/apache/commons/lang3/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method
