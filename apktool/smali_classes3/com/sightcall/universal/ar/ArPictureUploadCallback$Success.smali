.class public Lcom/sightcall/universal/ar/ArPictureUploadCallback$Success;
.super Lcom/sightcall/universal/api/ApiCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/ar/ArPictureUploadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Success"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/api/ApiCallback<",
        "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
        "Lcom/sightcall/universal/ar/ArPictureUpload;",
        ">;>;"
    }
.end annotation


# instance fields
.field final upload:Lcom/sightcall/universal/ar/ArPictureUpload;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/ar/ArPictureUpload;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/ApiCallback$Holder<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/ar/ArPictureUpload;",
            ">;>;",
            "Lcom/sightcall/universal/ar/ArPictureUpload;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sightcall/universal/api/ApiCallback;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    iput-object p2, p0, Lcom/sightcall/universal/ar/ArPictureUploadCallback$Success;->upload:Lcom/sightcall/universal/ar/ArPictureUpload;

    return-void
.end method


# virtual methods
.method public upload()Lcom/sightcall/universal/ar/ArPictureUpload;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/ar/ArPictureUploadCallback$Success;->upload:Lcom/sightcall/universal/ar/ArPictureUpload;

    return-object p0
.end method
