.class public abstract Lcom/google/common/base/Functions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Functions$ConstantFunction;
    }
.end annotation


# direct methods
.method public static a()Lcom/google/common/base/Function;
    .locals 1

    new-instance v0, Lcom/google/common/base/Functions$ConstantFunction;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method
