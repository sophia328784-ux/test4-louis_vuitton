.class public Llv/nfc/reader/data/models/TagCheckResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llv/nfc/reader/data/models/TagCheckResponse$Data;
    }
.end annotation


# instance fields
.field private data:Llv/nfc/reader/data/models/TagCheckResponse$Data;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Llv/nfc/reader/data/models/TagCheckResponse$Data;
    .locals 0

    iget-object p0, p0, Llv/nfc/reader/data/models/TagCheckResponse;->data:Llv/nfc/reader/data/models/TagCheckResponse$Data;

    return-object p0
.end method

.method public setData(Llv/nfc/reader/data/models/TagCheckResponse$Data;)V
    .locals 0

    iput-object p1, p0, Llv/nfc/reader/data/models/TagCheckResponse;->data:Llv/nfc/reader/data/models/TagCheckResponse$Data;

    return-void
.end method
