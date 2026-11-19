.class public Lcom/sightcall/universal/agent/Product;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/api/JsonApi$Included;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/Product$Relationships;,
        Lcom/sightcall/universal/agent/Product$Attributes;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "products"


# instance fields
.field attributes:Lcom/sightcall/universal/agent/Product$Attributes;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "attributes"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field relationships:Lcom/sightcall/universal/agent/Product$Relationships;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "relationships"
    .end annotation
.end field

.field type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "products"

    iput-object v0, p0, Lcom/sightcall/universal/agent/Product;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Product;->id:Ljava/lang/String;

    return-object p0
.end method

.method public type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/Product;->type:Ljava/lang/String;

    return-object p0
.end method
