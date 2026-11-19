.class public Lcom/sightcall/universal/agent/Product$Relationships;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Product;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Relationships"
.end annotation


# instance fields
.field public usecase:Lcom/sightcall/universal/api/JsonApi$Wrapper;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "usecase"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/api/JsonApi$Linkage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
