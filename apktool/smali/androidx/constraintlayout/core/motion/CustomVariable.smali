.class public Landroidx/constraintlayout/core/motion/CustomVariable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public c:I

.field public d:F

.field public e:Ljava/lang/String;

.field public f:Z


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/motion/CustomVariable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->e:Ljava/lang/String;

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->a:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->a:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->b:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->b:I

    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->e:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->e:Ljava/lang/String;

    iget-boolean p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->f:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->f:Z

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/motion/CustomVariable;Ljava/lang/Object;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 80
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 81
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->e:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->a:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->a:Ljava/lang/String;

    .line 84
    iget p1, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->b:I

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->b:I

    .line 85
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/CustomVariable;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 67
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 68
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->e:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->a:Ljava/lang/String;

    .line 71
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IF)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 54
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->e:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->a:Ljava/lang/String;

    .line 57
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->b:I

    .line 58
    iput p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 46
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 47
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->e:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->a:Ljava/lang/String;

    .line 50
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->b:I

    const/16 p1, 0x385

    if-ne p2, p1, :cond_0

    int-to-float p1, p3

    .line 51
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    return-void

    .line 52
    :cond_0
    iput p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 73
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 74
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->e:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->a:Ljava/lang/String;

    .line 77
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->b:I

    .line 78
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 41
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    .line 42
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->a:Ljava/lang/String;

    .line 43
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->b:I

    .line 44
    iput-object p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 60
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 61
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->e:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->a:Ljava/lang/String;

    .line 64
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->b:I

    .line 65
    iput-boolean p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->f:Z

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "00000000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->b:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->f:Z

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->e:Ljava/lang/String;

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->a:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-static {v0, v1, v2}, Lfc;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->b:I

    packed-switch v1, :pswitch_data_0

    const-string p0, "????"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->f:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    invoke-static {p0}, Landroidx/constraintlayout/core/motion/CustomVariable;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->d:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
