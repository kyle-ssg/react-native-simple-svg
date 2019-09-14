import PropTypes from 'prop-types';
import React from 'react';
import {requireNativeComponent} from 'react-native';

class SimpleSVG extends React.Component {
    render() {
        return <RNSimpleSVG {...this.props} />;
    }
}

SimpleSVG.propTypes = {
    /**
     * A regular image src
     */
    source: PropTypes.any.isRequired,
    style: PropTypes.oneOfType([PropTypes.object, PropTypes.array]),
};

var RNSimpleSVG = requireNativeComponent('RNSimpleSVG', SimpleSVG);

export default SimpleSVG;
