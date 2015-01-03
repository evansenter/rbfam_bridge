require "wrnap"
require "rbfam"
require "rbfam_bridge/version"

Rbfam::Family.class_eval do
  def wrnap
    Wrnap::Rna::Box.new(rnas.map(&:wrnap), name)
  end
end

Rbfam::Rna.class_eval do
  def wrnap
    Wrnap::Rna::Context.init_from_string(*instance_eval { [seq, accession, from, to] })
  end
end
