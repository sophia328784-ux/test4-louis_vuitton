.class public final enum Lcom/perfectcorp/common/network/RequestTask$RequestMethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/network/RequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/common/network/RequestTask$RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GET:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

.field public static final enum POST:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

.field private static final synthetic b:[Lcom/perfectcorp/common/network/RequestTask$RequestMethod;


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;->POST:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    new-instance v1, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    const-string v2, "GET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;->GET:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    filled-new-array {v0, v1}, [Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;->b:[Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/common/network/RequestTask$RequestMethod;
    .locals 1

    const-class v0, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/common/network/RequestTask$RequestMethod;
    .locals 1

    sget-object v0, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;->b:[Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    invoke-virtual {v0}, [Lcom/perfectcorp/common/network/RequestTask$RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    return-object v0
.end method
