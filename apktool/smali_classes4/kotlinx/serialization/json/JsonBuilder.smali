.class public final Lkotlinx/serialization/json/JsonBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlinx/serialization/json/JsonBuilder;",
        "",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "<init>",
        "(Lkotlinx/serialization/json/Json;)V",
        "kotlinx-serialization-json"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public final f:Ljava/lang/String;

.field public g:Z

.field public final h:Ljava/lang/String;

.field public final i:Lkotlinx/serialization/json/ClassDiscriminatorMode;

.field public j:Z

.field public final k:Lkotlinx/serialization/json/JsonNamingStrategy;

.field public l:Z

.field public m:Z

.field public final n:Z

.field public o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Lkotlinx/serialization/modules/SerializersModule;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->a:Z

    iput-boolean v1, p0, Lkotlinx/serialization/json/JsonBuilder;->a:Z

    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->f:Z

    iput-boolean v1, p0, Lkotlinx/serialization/json/JsonBuilder;->b:Z

    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->b:Z

    iput-boolean v1, p0, Lkotlinx/serialization/json/JsonBuilder;->c:Z

    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->c:Z

    iput-boolean v1, p0, Lkotlinx/serialization/json/JsonBuilder;->d:Z

    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->e:Z

    iput-boolean v1, p0, Lkotlinx/serialization/json/JsonBuilder;->e:Z

    iget-object v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->g:Ljava/lang/String;

    iput-object v1, p0, Lkotlinx/serialization/json/JsonBuilder;->f:Ljava/lang/String;

    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->h:Z

    iput-boolean v1, p0, Lkotlinx/serialization/json/JsonBuilder;->g:Z

    iget-object v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->j:Ljava/lang/String;

    iput-object v1, p0, Lkotlinx/serialization/json/JsonBuilder;->h:Ljava/lang/String;

    iget-object v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->q:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    iput-object v1, p0, Lkotlinx/serialization/json/JsonBuilder;->i:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->l:Z

    iput-boolean v1, p0, Lkotlinx/serialization/json/JsonBuilder;->j:Z

    iget-object v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->m:Lkotlinx/serialization/json/JsonNamingStrategy;

    iput-object v1, p0, Lkotlinx/serialization/json/JsonBuilder;->k:Lkotlinx/serialization/json/JsonNamingStrategy;

    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->n:Z

    iput-boolean v1, p0, Lkotlinx/serialization/json/JsonBuilder;->l:Z

    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->o:Z

    iput-boolean v1, p0, Lkotlinx/serialization/json/JsonBuilder;->m:Z

    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->p:Z

    iput-boolean v1, p0, Lkotlinx/serialization/json/JsonBuilder;->n:Z

    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->k:Z

    iput-boolean v1, p0, Lkotlinx/serialization/json/JsonBuilder;->o:Z

    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->d:Z

    iput-boolean v1, p0, Lkotlinx/serialization/json/JsonBuilder;->p:Z

    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->i:Z

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->q:Z

    iget-object p1, p1, Lkotlinx/serialization/json/Json;->b:Lkotlinx/serialization/modules/SerializersModule;

    iput-object p1, p0, Lkotlinx/serialization/json/JsonBuilder;->r:Lkotlinx/serialization/modules/SerializersModule;

    return-void
.end method
