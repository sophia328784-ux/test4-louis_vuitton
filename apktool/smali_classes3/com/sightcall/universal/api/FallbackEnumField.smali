.class public interface abstract annotation Lcom/sightcall/universal/api/FallbackEnumField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/squareup/moshi/JsonQualifier;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ADAPTER_FACTORY:Lcom/squareup/moshi/JsonAdapter$Factory;

.field public static final NULL:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/api/FallbackEnumField$1;

    invoke-direct {v0}, Lcom/sightcall/universal/api/FallbackEnumField$1;-><init>()V

    sput-object v0, Lcom/sightcall/universal/api/FallbackEnumField;->ADAPTER_FACTORY:Lcom/squareup/moshi/JsonAdapter$Factory;

    return-void
.end method


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method
