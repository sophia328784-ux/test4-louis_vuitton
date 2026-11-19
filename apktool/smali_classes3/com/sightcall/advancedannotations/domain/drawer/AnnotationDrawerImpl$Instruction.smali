.class final Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Instruction"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0008H\u00c6\u0003J-\u0010\u0011\u001a\u00020\u00002\u0018\u0008\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0014\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0015\u001a\u00020\u0016H\u00d6\u0081\u0004J\n\u0010\u0017\u001a\u00020\u0018H\u00d6\u0081\u0004R!\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;",
        "",
        "map",
        "",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
        "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationList;",
        "command",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;",
        "<init>",
        "(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V",
        "getMap",
        "()Ljava/util/Map;",
        "getCommand",
        "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "advancedannotations_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final command:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
            ">;",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->map:Ljava/util/Map;

    iput-object p2, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->command:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;ILjava/lang/Object;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->map:Ljava/util/Map;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->command:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->copy(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->map:Ljava/util/Map;

    return-object p0
.end method

.method public final component2()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->command:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    return-object p0
.end method

.method public final copy(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
            ">;",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;",
            ")",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;-><init>(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;

    iget-object v1, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->map:Ljava/util/Map;

    iget-object v3, p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->map:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->command:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    iget-object p1, p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->command:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCommand()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->command:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    return-object p0
.end method

.method public final getMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->map:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->command:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->map:Ljava/util/Map;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->command:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instruction(map="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", command="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
