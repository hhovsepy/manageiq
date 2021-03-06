describe RetirementVisibilityService do
  let(:subject) { described_class.new }

  describe "#determine_visibility" do
    context "when retirement to_i is greater than 0" do
      let(:retirement) { 123 }

      it "adds the retirement warn to the show fields" do
        expect(subject.determine_visibility(retirement)).to eq(
          :hide => [],
          :show => [:retirement_warn]
        )
      end
    end

    context "when retirement to_i is not greater than 0" do
      let(:retirement) { 0 }

      it "adds the retirement warn to the hide fields" do
        expect(subject.determine_visibility(retirement)).to eq(
          :hide => [:retirement_warn],
          :show => []
        )
      end
    end
  end
end
