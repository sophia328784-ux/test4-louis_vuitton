.class public interface abstract Lcom/sightcall/universal/api/JsonApi$Included;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/api/JsonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Included"
.end annotation


# static fields
.field public static final LABEL:Ljava/lang/String; = "type"

.field public static final UNKNOWN:Lcom/sightcall/universal/api/JsonApi$Included;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/api/JsonApi$Included$1;

    invoke-direct {v0}, Lcom/sightcall/universal/api/JsonApi$Included$1;-><init>()V

    sput-object v0, Lcom/sightcall/universal/api/JsonApi$Included;->UNKNOWN:Lcom/sightcall/universal/api/JsonApi$Included;

    return-void
.end method


# virtual methods
.method public abstract id()Ljava/lang/String;
.end method

.method public abstract type()Ljava/lang/String;
.end method
