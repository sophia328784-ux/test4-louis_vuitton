.class Landroidx/dynamicanimation/animation/DynamicAnimation$15;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/dynamicanimation/animation/FloatValueHolder;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation$15;->a:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const-string p1, "FloatValueHolder"

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)F
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation$15;->a:Landroidx/dynamicanimation/animation/FloatValueHolder;

    iget p0, p0, Landroidx/dynamicanimation/animation/FloatValueHolder;->a:F

    return p0
.end method

.method public final b(Ljava/lang/Object;F)V
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation$15;->a:Landroidx/dynamicanimation/animation/FloatValueHolder;

    iput p2, p0, Landroidx/dynamicanimation/animation/FloatValueHolder;->a:F

    return-void
.end method
