.class public final Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;",
        "",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;",
        "step1Preliminary",
        "step2Send",
        "step3Receive",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;",
        "formState",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;)V",
        "presentation"
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
.field public final a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

.field public final b:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

.field public final c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

.field public final d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 33
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    .line 30
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    .line 31
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    .line 32
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    sget-object p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->DISABLED:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    sget-object p2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->DISABLED:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    sget-object p3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;->DISABLED:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    sget-object p4, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;->MODIFY:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;)V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AssessmentBffStateUIModel(step1Preliminary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", step2Send="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", step3Receive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", formState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
