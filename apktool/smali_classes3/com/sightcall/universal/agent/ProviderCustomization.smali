.class public Lcom/sightcall/universal/agent/ProviderCustomization;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/api/JsonApi$Included;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/ProviderCustomization$Attributes;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "provider-customizations"


# instance fields
.field private attributes:Lcom/sightcall/universal/agent/ProviderCustomization$Attributes;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "attributes"
    .end annotation
.end field

.field final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "id"
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "provider-customizations"

    iput-object v0, p0, Lcom/sightcall/universal/agent/ProviderCustomization;->type:Ljava/lang/String;

    iput-object p1, p0, Lcom/sightcall/universal/agent/ProviderCustomization;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/ProviderCustomization;->id:Ljava/lang/String;

    return-object p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/ProviderCustomization;->attributes:Lcom/sightcall/universal/agent/ProviderCustomization$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/ProviderCustomization$Attributes;->name:Ljava/lang/String;

    return-object p0
.end method

.method public type()Ljava/lang/String;
    .locals 0

    const-string p0, "provider-customizations"

    return-object p0
.end method

.method public value()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/ProviderCustomization;->attributes:Lcom/sightcall/universal/agent/ProviderCustomization$Attributes;

    iget-object p0, p0, Lcom/sightcall/universal/agent/ProviderCustomization$Attributes;->value:Ljava/lang/String;

    return-object p0
.end method
