.class public Lcom/lp/ble/entity/BLEResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lp/ble/entity/BLEResponse$Builder;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:[B

.field public d:I


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/lp/ble/entity/BLEResponse;->b:I

    iget v1, p0, Lcom/lp/ble/entity/BLEResponse;->d:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/lp/ble/entity/BLEResponse;->c:[B

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b([B)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/lp/ble/entity/BLEResponse;->d:I

    add-int v2, v1, v0

    iget-object v3, p0, Lcom/lp/ble/entity/BLEResponse;->c:[B

    array-length v4, v3

    if-le v2, v4, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/lp/ble/entity/BLEResponse;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/lp/ble/entity/BLEResponse;->d:I

    return-void
.end method
