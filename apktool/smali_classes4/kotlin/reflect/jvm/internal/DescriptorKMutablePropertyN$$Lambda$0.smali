.class Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$$Lambda$0;->b:Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget v0, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;->s:I

    new-instance v0, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$$Lambda$0;->b:Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;)V

    return-object v0
.end method
