.class Lkotlin/reflect/jvm/internal/DescriptorKProperty1$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/DescriptorKProperty1;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty1$$Lambda$0;->b:Lkotlin/reflect/jvm/internal/DescriptorKProperty1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget v0, Lkotlin/reflect/jvm/internal/DescriptorKProperty1;->r:I

    new-instance v0, Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty1$$Lambda$0;->b:Lkotlin/reflect/jvm/internal/DescriptorKProperty1;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty1;)V

    return-object v0
.end method
